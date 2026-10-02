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
alias sudoedit='doas vim'
alias se='sudoedit'

rc() { vim "$HOME/.$(ps -p $$ -o comm=)rc" ; }
ref() { source "$HOME/.$(ps -p $$ -o comm=)rc" ; }
mkcd() { mkdir -p "$1" && cd "$1" ; }


alias rcc="g++ -std=c++23 -Wall -Wextra -Werror *.cc -o /tmp/sol && /tmp/sol"

cf() {
  if (( $# != 1 )) || [[ ! $1 =~ ^([0-9]+)([A-Za-z])$ ]] ; then
    printf "no problem code given or problem code is wrong. eg: 71A." >&2
    return 1
  fi

  mkcd "${BASH_REMATCH[1]}" || return 1
  touch "${BASH_REMATCH[2]}.cc" || return 1

  cat > "${BASH_REMATCH[2]}.cc" <<EOF
#include <bits/stdc++.h>
using namespace std;
typedef std::size_t st;
typedef long long ll;

void solve()
{

}

int main(void)
{
  std::ios_base::sync_with_stdio(false);
  std::cin.tie(nullptr);

  int t; cin >> t;
  while (t--)
  {
    solve();
  }
}
EOF
}


export EDITOR=vim
#export PAGER="less --mouse"
export PAGER="nvim +Man!"
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export HISTSIZE=1000000000
export HISTFILESIZE=1000000000

prompt_dir() {
    if [[ "$PWD" == "$HOME" ]]; then
        printf '~'
    else
        local path="${PWD#$HOME/}"
        IFS=/ read -ra parts <<< "$path"

        if ((${#parts[@]} >= 2)); then
            printf '%s/%s' "${parts[-2]}" "${parts[-1]}"
        else
            printf '%s' "${parts[0]}"
        fi
    fi
}

#PS1='\u@\h \W % '
PS1='\u@\h $(prompt_dir) % '
