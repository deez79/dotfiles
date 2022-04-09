# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###--- General Settings---###
source ~/.config/terminal/general.rc

#export TERM=screen-256color
#export TERM=xterm-256color

#export Editor as vim
#export EDITOR=vim

# Lines configured by zsh-newuser-install
#HISTFILE=~/.cache/history/histfile
#HISTFILE=/home/deez79/.cache/history/histfile
#HISTSIZE=10000
#HISTSAVE=10000

###--- ZSH Exclusive ---###
unsetopt beep
bindkey -v

zstyle :compinstall filename 'home/deez79/.zshrc'

autoload -Uz compinit
zstyle 'completion:*' menu select
zmodload zsh/complist
compinit

###--- General Aliases ---###
alias ls='ls --color=auto'
#[[ ! -f ~/.config/terminal/aliases.rc || source ~/.config/terminal/aliases.rc]]
source ~/.config/terminal/aliases.rc

source ~/.local/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# load zsh-syntax-highlighting: (Last thing always)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
