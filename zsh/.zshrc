# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
  export ZSH=/home/luke/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="gnzh"
ZSH_THEME="powerlevel9k/powerlevel9k"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Configuracion POWERLVEL9K
#POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# Elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
POWERLEVEL9K_STATUS_VERBOSE=false


#POWERLEVEL9K_CONTEXT_HOME_BACKGROUND='029'
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='236'
#POWERLEVEL9K_CONTEXT_HOME_SUBFOLDER_BACKGROUND='087'
#POWERLEVEL9K_CONTEXT_HOME_FOREGROUND='236'
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='087'
#POWERLEVEL9K_CONTEXT_HOME_SUBFOLDER_FOREGROUND='236'

#POWERLEVEL9K_DIR_HOME_BACKGROUND='087'
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='087'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='087'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='236'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='236'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='236'

# `git hub colors`
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='029'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='196'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'

# Icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Clock
POWERLEVEL9K_TIME_BACKGROUND='236'
POWERLEVEL9K_TIME_FOREGROUND='09'

# My additions
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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
