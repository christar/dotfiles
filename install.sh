#!/bin/sh

# oh-my-zsh
if [ -d "$HOME/.oh-my-zsh/custom" ]; then
    ln -sf $PWD/oh-my-zsh/my-custom.zsh $HOME/.oh-my-zsh/custom/
else
    echo "oh-my-zsh custom folder is not found!"
    echo "check if oh-my-zsh is installed!"
    echo "skipping oh-my-zsh configuration"
    echo ""
fi

# prezto
if [ -d "$HOME/.zprezto/runcoms" ]; then
    cat $PWD/oh-my-zsh/my-custom.zsh >> $HOME/.zprezto/runcoms/zshrc
    echo "appended my-custom.zsh to zprezto zshrc"
    echo ""
fi

# tmux
## back up existing config first
cp -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.bak" 2>/dev/null || true
ln -sf $PWD/tmux/tmux.conf ~/.tmux.conf


# vim/neovim
## back up existing config first
if [ -d "$HOME/.vim" ]; then
    cp -f "$HOME/.vimrc" "$HOME/.vimrc.bak" 2>/dev/null || true
    cp -f "$HOME/.vim/vimrc" "$HOME/.vim/vimrc.bak" 2>/dev/null || true
else
    mkdir $HOME/.vim
fi
ln -sf $PWD/vim/vimrc ~/.vim/vimrc

## install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

