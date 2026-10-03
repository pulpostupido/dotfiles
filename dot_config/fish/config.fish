fish_add_path -g ~/.local/bin
if status is-interactive
    ~/.local/bin/mise activate fish | source
    command -q zoxide; and zoxide init fish | source
    set -g fish_greeting
    set -gx EDITOR nvim
    abbr -a lg lazygit
    abbr -a v nvim
    abbr -a g git

    # catppuccin mocha everywhere
    fish_config theme choose catppuccin-mocha
    set -gx BAT_THEME "Catppuccin Mocha"
    set -gx FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a,border:#6c7086,label:#cdd6f4"
else
    ~/.local/bin/mise activate fish --shims | source
end
