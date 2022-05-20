# Custom aliases for local environment

if [[ $(uname) = 'Darwin' ]]; then
  alias physicalcores='sysctl hw.physicalcpu'
  alias cores='sysctl -n hw.ncpu'
  alias brewfile='vim ~/proca_dots/plugins/Brewfile'
  alias brewfreeze='brew bundle dump --force --file=~/proca_dots/plugins/Brewfile'
  alias weeknotes='vim ~/dev/weekly-diary/current-week.md'
  alias todo='vim /Users/ivan/vimwiki/TODO.wiki'
  alias ls='exa'
fi

alias vimrc='vim ~/.vimrc'
alias tmuxconf='vim ~/.tmux.conf'
alias gitconf='vim ~/.gitconfig'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias aliases='vim ~/proca_dots/system/aliases.sh'
alias sshconf='vim ~/.ssh/config'
alias sftp='rlwrap sftp'
