export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export ZSH=/$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git colorize docker-compose)

source $ZSH/oh-my-zsh.sh

alias em='/usr/local/bin/emacsclient -nw $1'
alias ctags="`brew --prefix`/bin/ctags"
alias ccache='sudo killall -HUP mDNSResponder' # Clean DNS cahce.
alias csafe='docker exec -it -u root bob_safe_1 node scripts/setOnePasswordCredentials.js'
alias dtail='dclf --tail=1'
alias gobob='cd $BOB_DIR'
alias npmb='npm run build -- -w'

#: local-dev 
export BOB_DIR=$HOME/source/bob
alias prestart='dcrestart igor octopus scraper johnnycash vera citadel boti orca richard carmella whatsapp-aggregator oscar snoopy hans stas calvin safe costa whatsapi'
alias docb='docker build -t $1:local --build-arg GITHUB_TOKEN=${GITHUB_TOKEN} .'
alias dbuild='docker build . --build-arg GITHUB_TOKEN=${GITHUB_TOKEN} -t $1'
# bat > cat
alias cat='bat'
# exa > ls
alias ls='exa'

# added by travis gem
[ -f /$HOME/.travis/travis.sh ] && source /$HOME/.travis/travis.sh

# Vterm stuff
vterm_prompt_end() {
    printf "\e]51;A$(whoami)@$(hostname):$(pwd)\e\\";
}

function vterm_printf(){
    if [ -n "$TMUX" ]; then
        # Tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}
if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi
