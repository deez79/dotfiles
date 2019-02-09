#
# ~/.bash_profile
#
#echo "from bash_profile"

# Infinite History:
HISTSIZE= HISTFILESIZE= 

# Standard:
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set terminal navigation to vim
set -o vi

export TERMINAL="urxvt"
# Path
PATH=$PATH:~/bin 
export PATH
# Customize Prompt:
## Color Section:
green=$(tput setaf 10);
white=$(tput setaf 15);
blue=$(tput setaf 67);
reset=$(tput sgr0);
bold=$(tput bold);

## Prompt Section:
PS1="\[${bold}\]"                       # start prompt. Make it all bold
PS1+="\[${white}\][";                   # white open bracket
PS1+="\[${green}\]\u@\h";               # green user@hostname
PS1+="\[${white}\]:";                   # white colon
PS1+="\[${blue}\]\w";                   # blue working directory
PS1+="\[${white}\]]";                   # white close bracket
PS1+="\[${white}\]> ";                  # white carrot
PS1+="\n";                              # new line
PS1+="\[${white}\]$ \[${reset}\]";      # reset prompt
export PS1;


# aliases:
alias ls='ls --color=auto'
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/deez79/anaconda3/bin/conda'     shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
        \eval "$__conda_setup"
else
        if [ -f "/home/deez79/anaconda3/etc/profile.d/conda.sh" ]; then
                . "/home/deez79/anaconda3/etc/profile.d/conda.sh"
                CONDA_CHANGEPS1=false conda activate base
        else
                \export PATH="/home/deez79/anaconda3/bin:$PATH"
        fi
fi
unset __conda_setup
# <<< conda init <<<

