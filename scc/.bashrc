#
# default .bashrc
# 03/31/13
#
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
 
umask 022

# disable coredumps by default
ulimit -c 0

# User specific aliases and functions

#export PATH=/projectnb/nonadmd/amber12/bin:$PATH
export PATH=/projectnb/nonadmd/openbabel-2.3.2_local/bin:$PATH
export PATH=/usr3/graduate/theavey/scripts/bin:$PATH
export PATH="/usr3/graduate/theavey/.local/bin:$PATH"
export AMBERHOME=/projectnb/nonadmd/amber12


# Add go to path to use drive for Google Drive
export GOPATH="$HOME/gopath"
export PATH="$GOPATH:$GOPATH/bin:$PATH"
module load go


export EDITOR=/usr/bin/vim

# colors prompt?
export PS1="\[\e[01;32m\][\u\[\e[0m\]\[\e[00;32m\]@\[\e[0m\]\[\e[01;33m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;31m\]\W\[\e[0m\]\[\e[01;32m\]]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
# can be customized at http://bashrcgenerator.com/

# HISTORY fixes, makes it much easier to grep and not be over burdened by all the 'ls' or 'cd' enteries:
#HISTORY
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# set Tab to ignore case:
bind 'set completion-ignore-case on' #complete with TAB even if mismatched case

# Load newer version of git
module load git

#Temporary Lines for Gromacs+plumed on SCC
module use /share/module/staging/by_username/lshekter
module load cuda/5.0
module load plumed/2.1.0

#Gaussian09 RevisionD.01
module load /usr/local/apps/gaussian-09.D.01/modulefile.txt

# Load newer versions of things I use
module load tmux
module load vmd

# Update DISPLAY when in a tmux session by entering "tmux update-env"
function tmux() {
    local tmux=$(type -fp tmux)
    case "$1" in
        update-environment|update-env|env-update)
            local v
            while read v; do
                if [[ $v == -* ]]; then
                    unset ${v/#-/}
                else
                    # Add quotes around the argument
                    v=${v/=/=\"}
                    v=${v/%/\"}
                    eval export $v
                fi
            done < <(tmux show-environment)
            ;;
        *)
            $tmux "$@"
            ;;
    esac
}

# separate file for all aliases:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# When executing less, automatically highlight first new line on scroll, show line numbers, ignore case in search,
# and don't clear screen on exit
export LESS="-WNiX"

# Remove duplicates in $PATH from https://unix.stackexchange.com/questions/14895/duplicate-entries-in-path-a-problem
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')
