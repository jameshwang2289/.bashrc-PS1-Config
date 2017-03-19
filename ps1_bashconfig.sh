count="$(ls /dev/pts/ | wc -l)"

if [ "$count" -le 2 ]; then
    screenfetch
fi

source /etc/bash_completion.d/git-prompt

#makes a clock and puts $ on next line
if [ $(($count % 6)) -eq 2 ]; then
    export PS1='\[\033[38;5;135m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;45m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;45m\][\@] # \[\033[0m\]'
elif [ $(($count % 6)) -eq 3 ]; then
    export PS1='\[\033[38;5;49m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;46m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;46m\][\@] # \[\033[0m\]'
elif [ $(($count % 6)) -eq 4 ]; then
    export PS1='\[\033[38;5;207m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;226m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;226m\][\@] # \[\033[0m\]'
elif [ $(($count % 6)) -eq 5 ]; then
    export PS1='\[\033[38;5;39m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;129m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;129m\][\@] # \[\033[0m\]'
elif [ $(($count % 6)) -eq 0 ]; then
    export PS1='\[\033[38;5;119m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;63m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;63m\][\@] # \[\033[0m\]'
elif [ $(($count % 6)) -eq 1 ]; then
    export PS1='\[\033[38;5;196m\]\e[1m\u@\h\[\033[1;34m\]\[\033[38;5;214m\]$(__git_ps1) \[\033[1;37m\]\w\n\[\033[38;5;214m\][\@] # \[\033[0m\]'
fi