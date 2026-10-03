function dotup --description 'pull dotfiles + upgrade every tool'
    chezmoi update --apply; and ~/.local/bin/mise upgrade --yes
end
