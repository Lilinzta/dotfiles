#!/bin/bash

dot=$HOME/git/dotfiles
dotconf=$dot/.config
conf=$HOME/.config

# Create symbolic links for dotfiles in the home directory
ln -s $dot/.tmux.conf $HOME/.tmux.conf
ln -s $dot/.ideavimrc $HOME/.ideavimrc
ln -s $dot/.gitconfig $HOME/.gitconfig
ln -s $dot/.vimrc $HOME/.vimrc
ln -s $dot/.zshrc $HOME/.zshrc
ln -s $dot/.vim $HOME/.vim

# Create symbolic links for dotfiles in the .config directory
ln -s $dotconf/starship.toml $conf/starship.toml
ln -s $dotconf/fontconfig $conf/fontconfig
ln -s $dotconf/alacritty $conf/alacritty
ln -s $dotconf/fastfetch $conf/fastfetch
ln -s $dotconf/neofetch $conf/neofetch
ln -s $dotconf/joshuto $conf/joshuto
ln -s $dotconf/ranger $conf/ranger
ln -s $dotconf/kitty $conf/kitty
ln -s $dotconf/helix $conf/helix
ln -s $dotconf/nvim $conf/nvim
ln -s $dotconf/btop $conf/btop
ln -s $dotconf/mpv $conf/mpv
ln -s $dotconf/zsh $conf/zsh
ln -s $dotconf/bat $conf/bat
ln -s $dotconf/lsd $conf/lsd
