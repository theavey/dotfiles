# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/theavey/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="flazz"

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
# DISABLE_AUTO_TITLE="true"

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
plugins=(git,vi-mode)

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

zstyle ':completion:*' use-cache 1
zstyle ':completion:*' cache-path /home/theavey/.zsh/cache


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
zstyle :compinstall filename '/home/theavey/.zshrc'

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

# add custom completions to path
fpath+=/usr/share/zsh/functions/Completion/custom
# This includes a completion for conda from https://github.com/esc/conda-zsh-completion
compinit conda

# start conda and put it in path
. /home/theavey/anaconda3/etc/profile.d/conda.sh
conda activate

# add LaTeX to path:
export PATH="/usr/local/texlive/2018/bin/x86_64-linux:$PATH"
export MANPATH="/usr/local/texlive/2018/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2018/texmf-dist/doc/info:$INFOPATH"

# Set default editor to vim
export EDITOR="/usr/bin/vim"

# for less, highlight first new line on scroll, line numbers, search ignore case, don't clear screen
export LESS="-WNiXR"

if [ -f ~/.dotfiles/washington/.zsh_aliases ]; then
    . ~/.dotfiles/washington/.zsh_aliases
fi

# Shortcuts for history search:
bindkey '^R' history-incremental-search-backward
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Scroll by words on command-line
bindkey '^[OD' backward-word
bindkey '^[OC' forward-word
# Skip to beginning/end of line:
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# added by travis gem
[ -f /home/theavey/.travis/travis.sh ] && source /home/theavey/.travis/travis.sh

# function(s) to keep environment variables up to date in tmux
# via https://babushk.in/posts/renew-environment-tmux.html
function refresh () { 
  if [ -n "$TMUX" ]; then
    export $(tmux show-environment | grep "^SSH_AUTH_SOCK")
    export $(tmux show-environment | grep "^DISPLAY")
  fi 
}

# Should run every before every execution?

function preexec {
    refresh
}


