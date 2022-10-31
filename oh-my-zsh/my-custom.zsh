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
    if [[ -n "${XDG_CURRENT_DESKOP}" ]] ; then
      setxkbmap -option "ctrl:swapcaps"
    fi
esac

