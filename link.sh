#!/bin/bash

dotconf=$HOME/git/dotfiles/.config
dot=$HOME/git/dotfiles

ln -s $dot/.tmux.conf $HOME/.tmux.conf
ln -s $dot/.ideavimrc $HOME/.ideavimrc
ln -s $dot/.gitconfig $HOME/.gitconfig
ln -s $dot/.vimrc $HOME/.vimrc
ln -s $dot/.zshrc $HOME/.zshrc
ln -s $dot/.vim $HOME/.vim

ln -s $dotconf/fontconfig $HOME/.config/fontconfig
ln -s $dotconf/alacritty $HOME/.config/alacritty
ln -s $dotconf/neofetch $HOME/.config/neofetch
ln -s $dotconf/joshuto $HOME/.config/joshuto
ln -s $dotconf/ranger $HOME/.config/ranger
ln -s $dotconf/kitty $HOME/.config/kitty
ln -s $dotconf/helix $HOME/.config/helix
ln -s $dotconf/nvim $HOME/.config/nvim
ln -s $dotconf/mpv $HOME/.config/mpv
ln -s $dotconf/zsh $HOME/.config/zsh
