# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:$HOME/bin"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR=vim

if [ -f .environment ]; then source .environment; fi
if [ -f .alias ]; then source .alias; fi

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HIST_STAMPS="yyyy-mm-dd"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Oh-my-zsh configureation
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rannoch"
plugins=(git svn zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Zsh configuration
setopt beep                  # Beep on error (doesn't seem to work).
setopt auto_menu
setopt bash_auto_list
setopt interactive_comments  # Allow use of `#' comments in input.

# Completion configuration
CASE_SENSITIVE="true"
bindkey -e
bindkey "^Q" push-input
zstyle :compinstall filename '/home/dmitry/.zshrc'
autoload -Uz compinit
compinit

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

