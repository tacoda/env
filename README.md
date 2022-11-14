# ENV

> My portable development environment

## Install

```sh
./install.sh
```

## What's Included?

This environment uses `nix` to manage packages.

Tools bundled in this environment include:

- bat
- comma
- direnv
- exa
- fd
- fzf
- git
- gitui
- home-manager
- neovim
- nix-direnv
- ripgrep
- stow
- tmux
- watchexec
- zsh
- zimfw
- VimPlug
- devenv
- Nixery

## Common Commands

Here are some common commands to use with this setup.

| Command | Description |
| --- | --- |
| `,` | Create a throw-away environment to try a tool |
| `ll` | Detailed list of files in directory |
| `la` | Detailed list of all files in directory |
| `lt` | Tree-like list of files under this directory |
| `rg foo` | Find content that matches `foo` |
| `fd foo` | Find files that match `foo` |

## Command Examples

> And script candidates

```sh
# TDD Loop

SPEC=$(fzf -q spec)
script/test $SPEC # Verify green

# Add Unit test
nvim $SPEC # Edit spec
script/test $SPEC # Red
IMPL=$(fzf)
nvim $IMPL # Make it pass
script/test $SPEC # Green
nvim $IMPL # Refactor (if needed)
script/test $SPEC # Green
git commit -am "Add unit test"

# Add Integrated test
nvim $SPEC # Edit spec
script/test $SPEC # Red
IMPL=$(fzf)
nvim $IMPL # Make it pass
script/test $SPEC # Green
nvim $IMPL # Refactor (if needed)
script/test $SPEC # Green
git commit -am "Add integrated test"

# Add Functional test
nvim $SPEC # Edit spec
script/test $SPEC # Red
IMPL=$(fzf)
nvim $IMPL # Make it pass
script/test $SPEC # Green
nvim $IMPL # Refactor (if needed)
script/test $SPEC # Green
git commit -am "Add functional test"

# Add Acceptance test
nvim $SPEC # Edit spec
script/test $SPEC # Red
IMPL=$(fzf)
nvim $IMPL # Make it pass
script/test $SPEC # Green
nvim $IMPL # Refactor (if needed)
script/test $SPEC # Green
git commit -am "Add acceptance test"

# Document
script/checks
git commit -am "Add feature"
git rebase -i origin/main # Squash commits
git push
```

```sh
# Fuzzy search for a spec and run it every time a ruby file changes
watchexec -e rb docker-compose exec test rspec $(fzf -q spec)
```
