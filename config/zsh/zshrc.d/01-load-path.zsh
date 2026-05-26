typeset -U path PATH

path=(
  "$XDG_BIN_HOME/common"
  "$XDG_BIN_HOME"

  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

  # keg-only bins
  "/opt/homebrew/opt/curl/bin"
  "/opt/homebrew/opt/openjdk/bin"
  "/opt/homebrew/opt/sqlite/bin"

  "/opt/homebrew/bin"

  "$CARGO_HOME/bin"
  "$GOBIN"

  "$path[@]"
)

export PATH
