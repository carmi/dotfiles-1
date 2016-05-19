alias reload!='. ~/.zshrc'
alias s='git status'

if [ -f ~/.profile.local ]; then
  source ~/.profile.local
fi
