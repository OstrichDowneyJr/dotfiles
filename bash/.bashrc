#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias grep='grep --color=always'
PS1='[\u@\h \W]\$ '


# All exports 
export EDITOR='/bin/nvim'
export PATH="$HOME/.local/share/bin:$PATH"
export TERM='xterm-256color'
export HISTCONTROL=ignoreboth:erasedups
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..auto'

# vim 
alias v="nvim"
alias n="neovide"

# Changing "ls" to "eza"
alias l='eza --color=always --group-directories-first'
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -al --color=always --group-directories-first ../' # ls on the PARENT directory
alias l..='eza -al --color=always --group-directories-first ../../' # ls on directory 2 levels up
alias l...='eza -al --color=always --group-directories-first ../../../' # ls on directory 3 levels up
alias lt='eza -al --tree --color=always --long'

# adding flags
alias df='df -h'               # human-readable sizes
alias du='du -h'               # human-readable sizes
alias free='free -m'           # show sizes in MB
alias grep='grep --color=auto' # colorize output (good for log files)

# prompt look
eval "$(starship init bash)"

#fuzzy finding
eval "$(fzf --bash)"

#zoxide - imporved cd
eval "$(zoxide init --cmd cd bash)"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


source ~/.local/share/blesh/ble.sh
[[ ! ${BLE_VERSION-} ]] || ble-attach

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# https://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


#################
### SCRIPTS #####
#################
# bash srcipts are in ~/.config/scripts/


export WAYLAND_DISPLAY=wayland-0
export MOZ_ENABLE_WAYLAND=1


export GDK_SCALE=1
export GDK_DPI_SCALE=1
