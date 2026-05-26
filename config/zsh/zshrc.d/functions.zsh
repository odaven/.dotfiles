# Backup a file or directory
bak() {
  local target
  if [[ $# -eq 1 ]]; then
    target="$1"
  elif [[ ! -t 0 ]]; then
    read -r target
  else
    echo "usage: bak <file-or-dir>" >&2
    return 1
  fi
  if [[ -z "$target" || "$target" = "." || "$target" = ".." ]]; then
    echo "usage: bak <file-or-dir>" >&2
    return 1
  fi
  local timestamp=$(date +%Y-%m-%dT%H:%M:%S)
  local bak="$target.$timestamp.bak"
  cp -R -- "$target" "$bak" && echo "$bak"
}

# Create /tmp folder and cd into it
cd-new-tmp() {
  cd "$(mktemp -d "/tmp/${1:-tmp}.XXX")"
}

# Compression
compress() {
  local src
  if [[ $# -eq 1 ]]; then
    src="${1%/}"
  elif [[ ! -t 0 ]]; then
    read -r src
    src="${src%/}"
  else
    echo "Usage: compress <file-or-dir>"
    return 1
  fi
  if [[ -z "$src" ]]; then
    echo "Usage: compress <file-or-dir>"
    return 1
  fi
  if [[ ! -e "$src" ]]; then
    echo "Error: '$src' does not exist."
    return 1
  fi
  tar -czf "$src.tar.gz" "$src" && echo "$src.tar.gz"
}

decompress() {
  local archive
  if [[ $# -eq 1 ]]; then
    archive="$1"
  elif [[ ! -t 0 ]]; then
    read -r archive
  else
    echo "Usage: decompress <archive.tar.gz>"
    return 1
  fi
  if [[ -z "$archive" ]]; then
    echo "Usage: decompress <archive.tar.gz>"
    return 1
  fi
  if [[ ! -f "$archive" ]]; then
    echo "Error: '$archive' not found."
    return 1
  fi
  tar -xzf "$archive" && echo "${archive%.tar.gz}"
}

tb() {
  local session='!bedrock'

  if tmux has-session -t "=$session" 2>/dev/null; then
    if [[ -n ${TMUX:-} ]]; then
        tmux switch-client -t "=$session"
    else
        tmux attach-session -t "=$session"
    fi
  else
    if [[ -n ${TMUX:-} ]]; then
        tmux new-session -ds "$session"
        tmux switch-client -t "=$session"
    else
        tmux new-session -s "$session"
    fi
  fi
}

# Quickly serve current directory over HTTP (Python 3)
serve() { 
  python3 -m http.server "${1:-8000}"; 
}
