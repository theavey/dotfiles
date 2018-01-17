
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setup PATH for some homebrew stuff (as suggested by brew doctor)
export PATH="/usr/local/sbin:$PATH"

# Set keybinding for ctrl left and right
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

# For TeX stuff
export PATH="/usr/local/texlive/2013/bin/x86_64-darwin:$PATH"

# Aliases for Mathematica
alias mathematica='/Applications/Mathematica.app/Contents/MacOS/Mathematica'
alias math='/Applications/Mathematica.app/Contents/MacOS/MathKernel'

# set Tab to ignore case:
bind 'set completion-ignore-case on' #complete with TAB even if mismatched case

alias rm='rm -i'
alias ll='ls -l'
alias lh='ls -lrth'
alias la='ls -a'

# aliases for git from gitimmersion tutorial:
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# color ls
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ssh1='ssh -Y theavey@scc1.bu.edu'
alias ssh2='ssh -Y theavey@scc2.bu.edu'
alias sshw='ssh -Y -p 12989 theavey@tjhiv.ddns.net'

# Reads other aliases from a different file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Set default editor to vim
export EDITOR='/usr/bin/vim'
