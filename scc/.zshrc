# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/usr3/graduate/theavey/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="flazz-t"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd directory
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' menu select=10
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/usr3/graduate/theavey/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch notify
unsetopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install


# Set default editor to vim
export EDITOR="/usr/bin/vim"

# for less, highlight first new line on scroll, line numbers, search ignore case, don't clear screen
export LESS="-WNiXR"

if [ -f ~/.dotfiles/scc/.zsh_aliases ]; then
    . ~/.dotfiles/scc/.zsh_aliases
fi


# random things
# update DISPLAY variable (worked in bash, at least)
#function tmux() {
#    local tmux=$(type -fp tmux)
#    case "$1" in
#        update-environment|update-env|env-update)
#            local v
#            while read v; do
#                if [[ $v == -* ]]; then
#                    unset ${v/#-/}
#                else
#                    # Add quotes around the argument
#                    v=${v/=/=\"}
#                    v=${v/%/\"}
#                    eval export $v
#                fi
#            done < <(tmux show-environment)
#            ;;
#        *)
#            $tmux "$@"
#            ;;
#    esac
#}

# Setup path
#path+=/projectnb/nonadmd/theavey/openbabel/bin
path+=/usr3/graduate/theavey/scripts/bin
path+=/usr3/graduate/theavey/.local/bin

# Load modules
## openbabel:
#module load python3/3.6.5  # might conflict with Anaconda
#module load wxwidgets/3.0.4
#module load openbabel/2.4.1
#module unload python3  # does conflict with Anaconda
# changed because installed openbabel with conda

# general
module load go
module load git
module use /share/module/staging/by_username/lshekter
#module load cuda/5.0
#module load plumed/2.1.0
module load tmux
#module load anaconda3
# using the newer miniconda since I use my own environments anyway
module load miniconda
module load vim

# vmd stuff
module load intel/2019
module load netcdf/4.6.1_intel-2019
module load vmd

# newer gromacs:
module load gcc/5.5.0
module load openmpi/3.1.1
module load cuda/9.2
#module load gromacs/2016.3  # doesn't exist now
module load gromacs/2018.3  # should work?

# newer Gaussian
module load gaussian/16.B.01


# function(s) to keep environment variables up to date in tmux
# via https://babushk.in/posts/renew-environment-tmux.html
function refresh () {
  if [ -n "$TMUX" ]; then
    # export $(tmux show-environment | grep "^SSH_AUTH_SOCK")
    # export $(tmux show-environment | grep "^DISPLAY")
    eval $(tmux show-environment -s SSH_AUTH_SOCK)
    eval $(tmux show-environment -s DISPLAY)
  fi
}

# Should run every before every execution?

function preexec {
    refresh
}


# set cntrl-r to do a history search?
bindkey '^R' history-incremental-search-backward
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Let cntrl left or right move by words
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
# Let cntrl A move to beginning of line
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# Add a folder to fpath for custom completions
fpath+=/usr3/graduate/theavey/.dotfiles/scc/.zsh/completions

# initialize conda completions (not sure if this is necessary here?)
# This is from https://github.com/esc/conda-zsh-completion/blob/master/_conda
compinit conda

# Add go to path to use drive for Google Drive
export GOPATH="$HOME/gopath"
path+=$GOPATH
path+=$GOPATH/bin

# undo last text command
bindkey '^Z' undo

