### PYENV STUFF ###
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

## OVERWRITES (these have to go first) ##
alias vim=nvim

## OH MY ZSH for colors and stuff ##
source ~/.oh_my_zshrc

## GENERAL ALIASES ##
alias ogres="echo 'are like onions'"
alias findf="find . -type f"
alias fif="findf"
alias fig="findf | grep"
export DEFAULT_VENV='/Users/armon.naddaf/venvs/anglerfish'
source $DEFAULT_VENV'/bin/activate' 
alias ll='ls -al'
alias sl='ls'
alias l1='ls -1'
alias q="exit"
alias szc="source ~/.zshrc"
alias sbc="szc"
alias def_alias='cat ~/.zshrc | grep'
alias list_aliases='cat ~/runcommands/.zshrc | grep -o "^alias\ [^\ ]*=" | sed "s/alias\\(.*\)=/\1/" '
alias lorep='cd ~/local_repos'
alias prettyjson='python3 -m json.tool'
alias chrome='open -a "Google Chrome"'
alias firefox='open -a "Firefox"'
alias safari='open -a "Safari"'
function refacdir(){
	dirnames=`ls | grep -o "$1" | sort --unique`
	echo $dirnames | xargs mkdir
	echo $dirnames | xargs -I _ /bin/sh -c "mv *_* _"
}
alias py="python3"
alias p3="python3"

## SCREEN ALIASES ##
alias sS="screen -S"
alias sls="screen -ls"
alias sr="screen -r"

## TMUX ALIASES (outside session) ##
alias twork="tmux new-session -P -s work -n Notes 'cd ~/Notes; ~/runcommands/scripts/tmux_startup.sh; zsh'"
alias termux="tmux -CC"
alias ta="tmux attach"
alias tat="ta -t"
alias tls="tmux list-sessions"

## TMUX ALIASES (inside session) ##
alias tnotes="tmux new-window -n notes -c ~/Notes 'zsh'"
alias tpcm="tmux new-window -n pcm -c ~/local_repos/cpu/scripts/pcm 'zsh'"
function tcolor(){
	tmux select-pane -P "fg=$1,bg=$2"
}
alias tcterm="tcolor green black" 
alias tcman="tcolor black white"
alias tcpink="tcolor pink black"
alias tcdef="tmux select-pane -P 'fg=entering_invalid_color_resets_to_default'"
alias tripane="tmux split-window -h; tmux split-window"

## GIT CONFIG ##
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
## GIT ALIASES ##
alias gad="git add ."
alias gadcom="gad; git commit -m"

## Python Aliases ##
function pyimport(){
	python3 -i -c "from $1 import *"
}
alias pimport='pyimport'
alias pumpy='python3 -i -c "import numpy as np"'
alias npy=pumpy
alias np3=pumpy
alias check_duplicates='python3 /Users/armon.naddaf/Utils/check_for_duplicates.py'
alias find_duplicates='check_duplicates'
alias pyrightconfig='cp ~/local_repos/cpu/pyrightconfig.json .'

### VIM ALIASES ###
alias nvimdiff="nvim -d"
alias ogvim='/usr/bin/vim'
alias ovim='ogvim'
alias fvim='vim $(fzf)'
alias f2vim='vim $(fzf) -O $(fzf)'
alias fzvim=fvim
alias add_alias='nvim ~/.zshrc;sbc;'
alias nvimrc='vim ~/runcommands/.config/nvim/init.vim'
## Install Ruby gems to ~/gems #
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
