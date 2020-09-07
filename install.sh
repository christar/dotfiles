#!/bin/sh

# tmux
## back up existing config first
cp -f "$HOME/.tmux.conf" "$HOME/.tmux.conf.bak" 2>/dev/null || true
ln -sf $PWD/tmux.conf ~/.tmux.conf

# vim/neovim
## back up existing config first
cp -f "$HOME/.vimrc" "$HOME/.vimrc.bak" 2>/dev/null || true
cp -f "$HOME/.vim/vimrc" "$HOME/.vim/vimrc.bak" 2>/dev/null || true
ln -sf $PWD/vimrc ~/.vim/vimrc
