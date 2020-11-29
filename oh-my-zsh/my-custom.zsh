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

