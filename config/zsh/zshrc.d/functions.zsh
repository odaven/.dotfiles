#!/usr/bin/env zsh

# Backup a file or directory
bak() {
  if [[ -z "$1" || "$1" = "." || "$1" = ".." ]]; then
    echo "usage: bak <file-or-dir>" >&2
    return 1
  fi
  local timestamp=$(date +%Y-%m-%dT%H:%M:%S)
  local bak="$1.$timestamp.bak"
  cp -R -- "$1" "$bak" && echo "$bak"
}

# Create /tmp folder and cd into it
cd-new-tmp() {
  cd "$(mktemp -d "/tmp/${1:-tmp}.XXX")"
}

# Compression
compress() {
  if [[ $# -ne 1 ]]; then
    echo "Usage: compress <file_or_dir>"
    return 1
  fi
  local src="${1%/}"
  if [[ ! -e "$src" ]]; then
    echo "Error: '$src' does not exist."
    return 1
  fi
  tar -czf "$src.tar.gz" "$src"
}

decompress() {
  if [[ $# -ne 1 ]]; then
    echo "Usage: decompress <archive.tar.gz>"
    return 1
  fi
  local archive="$1"
  if [[ ! -f "$archive" ]]; then
    echo "Error: '$archive' not found."
    return 1
  fi
  tar -xzf "$archive"
}

# Quickly serve current directory over HTTP (Python 3)
serve() { 
  python3 -m http.server "${1:-8000}"; 
}

