# sourced from ~/.bashrc; interactive shells only, never recursive
if [ -n "${PS1:-}" ] && [ -z "${FISH_ALREADY_RUNNING:-}" ] && [ -z "${NO_FISH:-}" ]; then
  _fish="$("$HOME/.local/bin/mise" which fish 2>/dev/null)"
  if [ -x "$_fish" ]; then export FISH_ALREADY_RUNNING=1; exec "$_fish" -l; fi
fi
