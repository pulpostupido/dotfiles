#!/bin/sh
# Bootstrap on any box, no sudo:  curl -fsSL https://raw.githubusercontent.com/pulpostupido/dotfiles/main/install.sh | sh
# Non-interactive (no TTY, e.g. an agent): ... | sh -s -- --promptString email=you@x --promptBool work=true
set -eu
REPO="${DOTFILES_REPO:-pulpostupido}"
BIN="$HOME/.local/bin"
mkdir -p "$BIN"
export PATH="$BIN:$PATH"
command -v chezmoi >/dev/null || sh -c "$(curl -fsSL get.chezmoi.io)" -- -b "$BIN"
chezmoi init --apply "$REPO" "$@"
echo "done. open a new shell (or: exec bash)"
