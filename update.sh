cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.vimrc .
cp ~/.ideavimrc .
cp ~/.gitconfig .
cp -r ~/.config/alacritty ./.config
cp -r ~/.config/mpv ./.config
cp -r ~/.config/neofetch ./.config
cp -r ~/.config/nvim ./.config
cp -r ~/.config/ranger ./.config
cp -r ~/.config/zsh ./.config
cp -r ~/.config/kitty ./.config
# cp -r ~/.tmux ./.config
cp -r ~/.vim/autoload ./.vim
pacman -Q >./pkglist.txt
