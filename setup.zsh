#! /bin/zsh

#ln -s ~/github/dotfiles/vim ~/.vim
ln -fs ~/projects/dotfiles/vimrc ~/.vimrc
ln -fs ~/projects/dotfiles/xinitrc ~/.xinitrc
ln -fs ~/projects/dotfiles/tmux.conf ~/.tmux.conf
ln -fs ~/projects/dotfiles/i3 ~/.i3
ln -fs ~/projects/dotfiles/i3status ~/.i3status
ln -fs ~/projects/dotfiles/zshrc ~/.zshrc
ln -fs ~/projects/dotfiles/emacs ~/.emacs
ln -fs ~/projects/dotfiles/bg_random.sh ~/.bg_random.sh

chmod +x ~/.bg_random.sh