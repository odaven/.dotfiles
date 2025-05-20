#!/usr/bin/env zsh

# Colours for prompts
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
NC='\033[0m' # No Color

function echo_red() {
  echo "${RED}$1${NC}"
}

function check_package_manager() {
  if [[ "$(uname)" == "Darwin" ]]; then
    if ! command -v brew &>/dev/null; then
      echo_red "Homebrew is not installed. Please install it first: https://brew.sh/"
      return 1
    fi
  elif [[ "$(uname)" == "Linux" ]]; then
    if ! command -v apt &>/dev/null; then
      echo_red "APT is not available. Ensure you're using a Debian-based system or install APT."
      return 1
    fi
    echo "APT good ======================================"
  else
    echo_red "Unsupported operating system."
    return 1
  fi
}

function run_setup_list() {
  local dry_run=false
  local setups=()

  # Process arguments to handle --dry
  for arg in "$@"; do
    if [[ "$arg" == "--dry" ]]; then
      dry_run=true
    else
      setups+=("$arg")
    fi
  done

  # Iterate over the resolved setup files
  for setup in "${setups[@]}"; do
    setup_path="$HOME/.dotfiles/setup/$setup"
    if [ -f "$setup_path" ]; then
      if $dry_run; then
        echo "Would run: $setup_path"
      else
        "$setup_path"
      fi
    else
      echo_red "Didn't setup $setup_path"
    fi
  done
}

function run_setup_all() {
  local dry_run=false
  if [[ "$1" == "--dry" ]]; then
    dry_run=true
  fi

  for entry in "$HOME"/.dotfiles/setup/*
  do
    if $dry_run; then
      echo "Would run setup: $entry"
    else
      $entry
    fi
  done
}

function create_xdg_folders () {
  [ ! -d "$HOME"/.cache ] && mkdir "$HOME"/.cache
  [ ! -d "$HOME"/.config ] && mkdir "$HOME"/.config
  [ ! -d "$HOME"/.local ] && mkdir "$HOME"/.local
  [ ! -d "$HOME"/.local/share ] && mkdir "$HOME"/.local/share
  [ ! -d "$HOME"/.local/state ] && mkdir "$HOME"/.local/state
}

# Example usage:
# install_package <package_name>
# install_package bat git
# install_package bat git --dry
install_packages_old() {
    local mode=""
    local packages=()

    # Parse arguments
    for arg in "$@"; do
        if [[ "$arg" == "--dry" ]]; then
            mode="dry"
        else
            packages+=("$arg")
        fi
    done

    if [[ "$mode" == "dry" ]]; then
        for package_name in "${packages[@]}"; do
            echo "Dry run: Would install $package_name"
        done
        return 0
    fi

    for package_name in "${packages[@]}"; do
        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS logic
            if command -v brew >/dev/null 2>&1; then
                brew install "$package_name"
            else
                echo "Homebrew is not installed on macOS."
                return 1
            fi
        elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
            # Linux logic
            if command -v apt >/dev/null 2>&1; then
                sudo apt install -y "$package_name"
            else
                echo "APT is not available on Linux."
                return 1
            fi
        else
            echo "Unsupported operating system: $OSTYPE"
            return 1
        fi
    done
}

install_packages() {
    local mode=""
    local packages=()

    # Parse arguments
    for arg in "$@"; do
        if [[ "$arg" == "--dry" ]]; then
            mode="dry"
        else
            packages+=("$arg")
        fi
    done

    if [[ "$mode" == "dry" ]]; then
        for package_name in "${packages[@]}"; do
            echo "Dry run: Would run install script for $package_name"
        done
        return 0
    fi

    for package_name in "${packages[@]}"; do
        local install_script="$HOME/.dotfiles/install/$package_name"
        if [[ -f "$install_script" ]]; then
            "$install_script"
        else
            echo_red "Install script not found for $package_name: $install_script"
            return 1
        fi
    done
}
