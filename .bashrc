[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim


#less colors
export LESS_TERMCAP_mb=$'\E[1;34m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;34m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

export PS1="\$? [\u@\h \W]\$ "

alias gl='git log --oneline'
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gls='git ls-files'
alias gccf='gcc -std=c99 -Wextra -Wall -Werror -pedantic'
alias cppf='clang++ -Wall -Wextra -Werror -pedantic -std=c++17 -D_GLIBCXX_DEBUG'
alias gb='git branch -a'
alias gpl='git pull'

alias v='vim'
alias sl='ls'
alias cdm='cd /home/nebon-_a/afs/2021/nebon-_a/'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias i3l=" i3lock -i '/home/nebon-_a/afs/nebon-_a/perso_config/865109.png'"

alias cpp='cd /home/nebon-_a/afs/2021/nebon-_a/s2'
# Base16 Shell
BASE16_SHELL="$AFS_DIR/.confs/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
