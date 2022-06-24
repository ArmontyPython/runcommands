## OVERWRITES (these have to go first) ##
alias vim=nvim

## OH MY ZSH for colors and stuff ##
source ~/.oh_my_zshrc

## GENERAL ALIASES ##
alias ll='ls -al'
alias q="exit"
alias szc="source ~/.zshrc"
alias sbc="szc"
alias add_alias="vim ~/.zshrc;sbc;"
alias def_alias='cat ~/.zshrc | grep'
alias list_aliases='cat ~/runcommands/.zshrc | grep -o "^alias\ [^\ ]*=" | sed "s/alias\\(.*\)=/\1/" '
alias lorep='cd ~/local_repos'
alias prettyjson='python3 -m json.tool'
alias ogvim='/usr/bin/vim'
alias ovim='ogvim'

## SCREEN ALIASES ##
alias sS="screen -S"
alias sls="screen -ls"
alias sr="screen -r"

## TMUX ALIASES (outside session) ##
alias ta="tmux attach"
alias tls="tmux list-sessions"

## TMUX ALIASES (inside session) ##
function tcolor(){
	tmux select-pane -P "fg=$1,bg=$2"
}
alias tcterm="tcolor green black" 
alias tcman="tcolor black white"
alias tcpink="tcolor pink black"
alias tcdef="tmux select-pane -P 'fg=entering_invalid_color_resets_to_default'"
alias tripane="tmux split-window -h; tmux split-window"

## GIT ALIASES ##
alias gad="git add ."
alias gadcom="gad; git commit -m"

## FZF ALIASES ##
alias fvim='vim $(fzf)'
alias f2vim='vim $(fzf) -O $(fzf)'
alias fzvim=fvim
