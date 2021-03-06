# Custom aliases for local environment

if [[ $(uname) = 'Darwin' ]]; then
  alias physicalcores='sysctl hw.physicalcpu'
  alias cores='sysctl -n hw.ncpu'
  alias ls='ls -G'
  alias brewfile='vim ~/proca_dots/plugins/Brewfile'
  alias brewfreeze='brew bundle dump --force --file=~/proca_dots/plugins/Brewfile'
  alias weeknotes='vim ~/dev/weekly-diary/current-week.md'
  alias todo='vim /Users/ivan/vimwiki/TODO.wiki'
fi

alias desk='cd ~/Desktop'
alias vimrc='vim ~/.vimrc'
alias tmuxconf='vim ~/.tmux.conf'
alias gitconf='vim ~/.gitconfig'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias aliases='vim ~/proca_dots/system/aliases.sh'
alias reload='source ~/.zshrc'
