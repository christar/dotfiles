#!/bin/sh

# oh-my-zsh
if [ -d "$HOME/.oh-my-zsh/custom" ]; then 
    cp -f $PWD/oh-my-zsh/my-custom.zsh $HOME/.oh-my-zsh/custom/
else
    echo "oh-my-zsh custom folder is not found!" 
    echo "check if oh-my-zsh is installed!"
fi


# tmux
## back up existing config first
cp -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.bak" 2>/dev/null || true
ln -sf $PWD/tmux/tmux.conf ~/.tmux.conf


# vim/neovim
## back up existing config first
cp -f "$HOME/.vimrc" "$HOME/.vimrc.bak" 2>/dev/null || true
cp -f "$HOME/.vim/vimrc" "$HOME/.vim/vimrc.bak" 2>/dev/null || true
ln -sf $PWD/vim/vimrc ~/.vim/vimrc

## install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

