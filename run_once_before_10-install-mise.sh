#!/bin/sh
set -eu
[ -x "$HOME/.local/bin/mise" ] || curl -fsSL https://mise.run | sh
