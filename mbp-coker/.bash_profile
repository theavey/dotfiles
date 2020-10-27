

# for TeX stuff
export PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-darwin"

# add conda bin to path:
export PATH=~/anaconda3/bin:"$PATH"

# Add script folder to path:
export PATH="$PATH:/Users/theavey/scripts"

# set Tab to ignore case:
bind 'set completion-ignore-case on' #complete with TAB even if mismatched case

alias ll='ls -l'
alias lh='ls -lrth'
alias la='ls -a'

# color ls
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# For VMD commandline access:
vmdappdir='/Applications/VMD1.9.3.app/Contents'
alias vmd='"$vmdappdir/Resources/VMD.app/Contents/MacOS/VMD" $*'

# Use a separate file to define most aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Set default editor to vim
export EDITOR='/usr/bin/vim'


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# When executing less, automatically highlight first new line on scroll, show line numbers,
# ignore case in search, and don't clear screen on exit
export LESS="-WNiX"

