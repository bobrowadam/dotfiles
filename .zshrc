# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export ZSH=/$HOME/.oh-my-zsh
source $HOME/secrets.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="lambda-mod"
ZSH_THEME="robbyrussell"

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
plugins=(git colorize docker-compose nvm)

alias nvminit='source $HOME/.nvm-setup.sh'
source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
#export LANG="en_US.UTF-8"
#export LC_ALL="en_US.UTF-8"

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

# Emacs aliases
alias emacs='/usr/local/bin/emacs-28.0.50 -nw $1'
# alias emacs="/usr/local/opt/emacs-plus/bin/emacs-28.0.50 -nw"
# alias em="/Applications/emacs-plus/Emacs.app/Contents/MacOS/Emacs -nw"
# alias Emacs="open -a /Applications/emacs-plus/Emacs.app/Contents/MacOS/Emacs"
# alias Eml="open -n -a /Applications/emacs-plus/Emacs.app/Contents/MacOS/Emacs"
# alias eml="/Applications/emacs-plus/Emacs.app/Contents/MacOS/Emacs -q -nw --load ~/.emacs.d/init.el"
alias ctags="`brew --prefix`/bin/ctags"

export EDITOR="emacsclient"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"


# rust src path
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/x86_64-apple-darwin/lib
source $HOME/.cargo/env

# kub aliases:
# alias kub='kubectl'
alias ccache='sudo killall -HUP mDNSResponder' # Clean DNS cahce.

#: local-dev 
export BOB_DIR=$HOME/source/bob

# bat > cat
alias cat='bat'

# added by travis gem
[ -f /$HOME/.travis/travis.sh ] && source /$HOME/.travis/travis.sh
# export sbcl PATH
export PATH="/usr/local/Cellar/sbcl/1.4.11/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

# added by travis gem
[ -f /Users/bob/.travis/travis.sh ] && source /Users/bob/.travis/travis.sh
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# AWS CLI
export PATH="$HOME/.local/lib/aws/bin/aws:$PATH"

vterm_prompt_end() {
    printf "\e]51;A$(whoami)@$(hostname):$(pwd)\e\\";
}

# Vterm stuff
PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
