# dotfiles

Any Linux box, no sudo, ~10 seconds:

```sh
curl -fsSL https://raw.githubusercontent.com/pulpostupido/dotfiles/main/install.sh | sh
```

Asks two things (git email, work machine?), then:

- **chezmoi** owns the config files (`~/.local/bin/chezmoi`)
- **mise** installs every CLI tool per-user: fish, neovim, lazygit, ripgrep, fd, fzf, zoxide, bat, delta, node
- `~/.bashrc` gets one appended line that hands interactive shells to fish (no `chsh` needed). `NO_FISH=1 bash` escapes.

## Day to day

| | |
|---|---|
| `dotup` | pull latest dotfiles + upgrade all tools |
| `chezmoi edit ~/.config/fish/config.fish` | edit the source, then `chezmoi apply` |
| `chezmoi add ~/.config/foo` | start tracking a new file |
| `chezmoi cd` → commit, push | ship a change to every machine |
| add a tool | one line in `~/.config/mise/config.toml`; `chezmoi apply` installs it |

## Rules

- No secrets, no employer config. Machine-specific values come from the prompts (`.chezmoi.toml.tmpl`).
- SSH keys are per machine, never in here.
- Never overwrites a host's `.bashrc`, only appends.
