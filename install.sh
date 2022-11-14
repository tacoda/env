# Install nix
sh <(curl -L https://nixos.org/nix/install)

# Source nix
# source ~/.nix-profile/etc/profile.d/nix.sh

# Install packages
nix-env -iA \
	nixpkgs.bat \
	nixpkgs.comma \
	nixpkgs.direnv \
	nixpkgs.exa \
	nixpkgs.fd \
	nixpkgs.fzf \
	nixpkgs.git \
	nixpkgs.gitui \
	nixpkgs.home-manager \
	nixpkgs.neovim \
	nixpkgs.nix-direnv \
	nixpkgs.ripgrep \
	nixpkgs.stow \
	nixpkgs.tmux \
	nixpkgs.watchexec \
	nixpkgs.zsh

# Add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# Use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Install zimfw
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Install VimPlug
sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install devenv
nix profile install github:cachix/cachix/latest --extra-experimental-features nix-command --extra-experimental-features flakes
nix profile install github:cachix/devenv/v0.2 --extra-experimental-features nix-command --extra-experimental-features flakes

