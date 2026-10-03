#!/bin/sh
# clone over https (works anywhere), push over ssh (forwarded agent / local key)
git -C "$CHEZMOI_SOURCE_DIR" remote set-url --push origin git@github.com:pulpostupido/dotfiles.git 2>/dev/null || true
