#
# default .bash_profile
# 07/09/14

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:.

if [ -x /usr/local/bin/msgs ]; then
   /usr/local/bin/msgs -f
fi
