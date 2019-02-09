#### Custom Section {{{ ########################################################
#
#       Maintainer: @deez79
#       create date: 10/20/2018
#
################################################################################

# Load the shell dotfiles:
# * ~/.path can be used to extend "PATH"
# * ~/.extra can be used for other settings you don't want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Set vi as default:
set -o vi

# Log every bash command ever:
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'


# dvtm dtach setup alias:
alias wm="dtach -A /tmp/dvtm -r winch dvtm"
#####}}} <<<End of Custom Section>>>############################################
