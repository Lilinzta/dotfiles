#!/bin/bash

# Create symbolic links for dotfiles in the home directory
ln -s $HOME/git/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/git/dotfiles/.ideavimrc $HOME/.ideavimrc
ln -s $HOME/git/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/git/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/git/dotfiles/.zshrc $HOME/.zshrc

# Create symbolic links for dotfiles in the .config directory
ln -s $HOME/git/dotfiles/.config/starship.toml $HOME/.config/starship.toml
ln -s $HOME/git/dotfiles/.config/fontconfig $HOME/.config
ln -s $HOME/git/dotfiles/.config/alacritty $HOME/.config
ln -s $HOME/git/dotfiles/.config/fastfetch $HOME/.config
ln -s $HOME/git/dotfiles/.config/neofetch $HOME/.config
ln -s $HOME/git/dotfiles/.config/joshuto $HOME/.config
ln -s $HOME/git/dotfiles/.config/ranger $HOME/.config
ln -s $HOME/git/dotfiles/.config/atuin $HOME/.config
ln -s $HOME/git/dotfiles/.config/kitty $HOME/.config
ln -s $HOME/git/dotfiles/.config/helix $HOME/.config
ln -s $HOME/git/dotfiles/.config/nvim $HOME/.config
ln -s $HOME/git/dotfiles/.config/btop $HOME/.config
ln -s $HOME/git/dotfiles/.config/mpv $HOME/.config
ln -s $HOME/git/dotfiles/.config/zsh $HOME/.config
ln -s $HOME/git/dotfiles/.config/bat $HOME/.config
ln -s $HOME/git/dotfiles/.config/lsd $HOME/.config
