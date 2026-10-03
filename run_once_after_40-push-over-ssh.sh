#!/bin/sh
# clone over https (works anywhere), push over ssh (forwarded agent / local key)
git -C "$(chezmoi source-path)" remote set-url --push origin git@github.com:pulpostupido/dotfiles.git 2>/dev/null || true
