#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias grep='grep --color=always'
alias vimrc='vim ~/.vimrc'
alias trc='echo TODO'
alias di='git diff --no-index --word-diff=color --word-diff-regex=.'

rc() { vim ~/.$(ps -p $$ -o comm=)rc ; }
ref() { source ~/.$(ps -p $$ -o comm=)rc ; }
mkcd() { mkdir -p "$1" && cd "$1" ; }

export EDITOR=vim
#export PAGER="less --mouse"
export PAGER="nvim +Man!"
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export HISTSIZE=1000000000
export HISTFILESIZE=1000000000

PS1="[\[\e[31m\]\\u\[\e[0m\] \W]$ "
