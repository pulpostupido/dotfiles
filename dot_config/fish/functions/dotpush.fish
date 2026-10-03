function dotpush --description 'commit + push dotfile changes from this machine'
    set -l msg (string join ' ' $argv)
    test -n "$msg"; or set msg "update from "(hostname)
    chezmoi re-add; and chezmoi git -- add -A
    and chezmoi git -- commit -m "$msg"
    and chezmoi git -- pull --rebase
    and chezmoi git -- push
end
