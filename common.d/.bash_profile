#
# ~/.bash_profile
#
###-------------Bash Exclusive----------------###
echo "from bash_profile"

#[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [ -f $HOME/.bash_profile ]; then
#        source $HOME/.bash_profile
#fi

## Powerline: (Not sure if this works in bash or in zsh)
#if [ -f `which powerline-daemon` ]; then
#git clone https://github.com/ryanoasis/nerd-fonts  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /usr/share/powerline/integrations/powerline.sh
#fi


###------------------- Prompt -----------------###
#{{{ => Prompt

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

#}}} end Prompt

###----------------- Aliases ------------------###
#{{{ => Aliases

###--- General aliases ---###
# Shared Aliases
if [ -f ~/.config/terminal/aliases.rc ]; then
    source ~/.config/terminal/aliases.rc
fi
# Local Aliases
if [ -f ~/.local/config/aliases ]; then
    source ~/.local/config/aliases
fi

#}}} end Aliases
if [ -f ~/.local/config/chatgpt.rc ]; then
    source ~/.local/config/chatgpt.rc
fi

###------------ General ----------------------###
#{{{ => General

# Shared Genearl Configs
source ~/.config/terminal/general.rc



#}}} end General

###--------------- Anoconda Setup -------------###
#{{{ => Anaconda Setup

## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '$HOME/anaconda3/bin/conda'     shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#        \eval "$__conda_setup"
#else
#        if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
#                . "$HOME/anaconda3/etc/profile.d/conda.sh"
#                CONDA_CHANGEPS1=false conda activate base
#        else
#                \export PATH="$HOME/anaconda3/bin:$PATH"
#        fi
#fi
#unset __conda_setup
## <<< conda init <<<

#}}} end Anaconda Setup

