# dotfiles
just some files

# notes
## git
```bash
mkdir -p ~/.config/git/hooks
vim ~/.config/git/hooks/pre-commit
vim ~/.config/git/ignore
```
and make your hooks executable:
```bash
chmod +x ~/.config/git/hooks/pre-commit
```

to make this universal
```bash
git config --global core.hooksPath ~/.config/git/hooks
git config --global core.excludesFile ~/.config/git/ignore
```

# TODO
- [ ] install script for new machines
  - [ ] manage edge cases like git hooks (`./git`); copy the config to some pre-know dest like `~/.config/git`
