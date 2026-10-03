fish_add_path -g ~/.local/bin
if status is-interactive
    ~/.local/bin/mise activate fish | source
    command -q zoxide; and zoxide init fish | source
    set -g fish_greeting
    set -gx EDITOR nvim
    abbr -a lg lazygit
    abbr -a v nvim
    abbr -a g git
else
    ~/.local/bin/mise activate fish --shims | source
end
