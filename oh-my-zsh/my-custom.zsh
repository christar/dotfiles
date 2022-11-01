## alias

case "$OSTYPE" in
  darwin*)
    alias bug="brew update --verbose && brew upgrade"
    ;;
  linux*)
    alias bug="sudo apt update && sudo apt full-upgrade"
    ;;
esac

alias n="nvim -u ~/.vim/vimrc"
alias t="open -a typora"
alias gdb="gdb -tui"

case "$OSTYPE" in
  linux*)
    if xset q &> /dev/null ; then
      setxkbmap -option "ctrl:swapcaps"
    fi
esac

