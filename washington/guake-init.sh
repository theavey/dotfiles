#!/bin/bash

# guake initialization setup

# This seems advised:
sleep 5

# rename first tab for SCC
guake -r scc1
# try to type into the line to prep for ssh
guake --execute="echo ssh 1"

# new tab for local work
guake --new-tab --execute="/usr/bin/zsh"
# start tmux in it
guake --execute="tmux"

