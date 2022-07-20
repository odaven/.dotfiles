
git_info() {
  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree >/dev/null 2>&1 && return

  # Original from J
  # local PROMPT_PREFIX=" %{$bold_color$fg[red]%} "
  local PROMPT_PREFIX=" %{$bold_color$fg[red]%} "
  local AHEAD="%{$fg[cyan]%}⇡NUM%{$reset_color%}"
  local BEHIND="%{$fg[cyan]%}⇣NUM%{$reset_color%}"
  local STASH="%{$fg[cyan]%}⍟NUM%{$reset_color%}"
  local MERGING_REBASING="%{$fg[magenta]%}⚡︎%{$reset_color%}"
  local STAGED="%{$fg[green]%}⚑:NUM %{$reset_color%}"
  local UNSTAGED="%{$fg[yellow]%}⚑:NUM %{$reset_color%}"
  local DELETED="%{$fg[red]%}✖:NUM %{$reset_color%}"
  local UNTRACKED="%{$fg[blue]%}?:NUM%{$reset_color%}"

  local -a DIVERGENCES
  local -a FLAGS
  local -a STASHED

  # cyan - ahead
  local NUM_AHEAD="$(git rev-list --count @{upstream}..HEAD 2>/dev/null)"
  if [[ -n "$NUM_AHEAD" && "$NUM_AHEAD" != 0 ]]; then
    DIVERGENCES+=("${AHEAD//NUM/$NUM_AHEAD}")
  fi

  # cyan - behind
  local NUM_BEHIND="$(git rev-list --count HEAD..@{upstream} 2>/dev/null)"
  if [[ -n "$NUM_BEHIND" && "$NUM_BEHIND" != 0 ]]; then
    DIVERGENCES+=("${BEHIND//NUM/$NUM_BEHIND}")
  fi

  # cyan - stashed
  local NUM_STASHED="$(git stash list 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_STASHED" -gt 0 ]; then
    STASHED+=("${STASH//NUM/$NUM_STASHED}")
  fi

  # magenta - merge/rebase
  local GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"
  if test -r $GIT_DIR/MERGE_HEAD || test -r $GIT_DIR/REBASE_HEAD; then
    FLAGS+=("$MERGING_REBASING")
  fi

  # green - staged
  local NUM_STAGED="$(git diff --name-only --cached 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_STAGED" -gt 0 ]; then
    FLAGS+=("${STAGED//NUM/$NUM_STAGED}")
  fi

  # yellow - unstaged
  local NUM_UNSTAGED="$(git diff --name-only --diff-filter=M 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_UNSTAGED" -gt 0 ]; then
    FLAGS+=("${UNSTAGED//NUM/$NUM_UNSTAGED}")
  fi

  # red - deleted
  local NUM_DELETED="$(git diff --name-only --diff-filter=D 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_DELETED" -gt 0 ]; then
    FLAGS+=("${DELETED//NUM/$NUM_DELETED}")
  fi

  # blue - untracked
  local NUM_UNTRACKED="$(git ls-files --other --exclude-standard 2>/dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_UNTRACKED" -gt 0 ]; then
    FLAGS+=("${UNTRACKED//NUM/$NUM_UNTRACKED}")
  fi

  local -a GIT_INFO
  GIT_INFO+=( "$(git_prompt_infoo)%{$reset_color%}" )
  [[ ${#STASHED[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)STASHED}" )
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
  echo "${(j: :)GIT_INFO}"
}

function git_prompt_infoo() {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=(tag: $(command git describe --tags --exact-match 2> /dev/null)) || \
  ref=(detached: $(command git rev-parse --short HEAD 2> /dev/null)) || return 0
  echo "$PROMPT_PREFIX${ref#refs/heads/}"
}

# right prompt
# RPS1='%{$FG[250]%}%n@%m%{$reset_color%}%'

# left prompt
PS1='
%{$fg[magenta]%}%* %{$reset_color%}%{$bold_color$fg[cyan]%}%~%u$(git_info)
%(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '

