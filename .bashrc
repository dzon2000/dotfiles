#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
# Custom
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#PS1='┌── \u [\[\e[32m\]\w\[\e[0m\]] \[\e[32m\[\e[91m\]$(parse_git_branch)\[\e[00m\]\n└─$ '
alias mpv='mpv --hwdec=vaapi --ytdl-format="bestvideo[ext=mp4][height<=?1080]+bestaudio[ext=m4a]"'
export BROWSER=chromium
alias docker="sudo docker"
alias grep="grep --color=auto"
alias ip="ip --color=auto"
alias diff="diff --color=auto"
alias hexedit="hexedit --color"
alias ls="exa"
alias cat="bat"
stty werase \^H

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
eval "$(starship init bash)"

