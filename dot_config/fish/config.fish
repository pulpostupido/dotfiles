fish_add_path -g ~/.local/bin
if status is-interactive
    ~/.local/bin/mise activate fish | source
    set -g fish_greeting
    set -gx EDITOR nvim
    set -gx DISABLE_AUTOUPDATER 1   # claude is updated by mise (dotup)
    fish_config theme choose catppuccin-mocha
    abbr -a lg lazygit
    abbr -a v nvim
    abbr -a g git
else
    ~/.local/bin/mise activate fish --shims | source
end
