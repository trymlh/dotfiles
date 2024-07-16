# source /home/tlh/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
date


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export GO111MODULE=on
export PATH=$PATH:~/.local/bin
export PATH="$PATH:~/.local/bin/flutter/bin"
export PATH="/bin/flutter/bin:$PATH"
export TESSDATA_PREFIX="/usr/share/tessdata"
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:$HOME/scripts"
export DATABASE_URL="postgresql://main2205_user:MpIUar1BI7Sezh54QKV4qtkvEkoKzmaw@dpg-cp769hvsc6pc73a4t1ig-a.frankfurt-postgres.render.com/main2205?sslmode=require"

EDITOR=code


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# eval `dircolors ~/.dircolors`
eval "$(starship init zsh)"


# Alias
alias lis="du -sh *" # List directories
alias config_zsh="nano ~/.zshrc"
alias phone="/mnt/d/tools/scrcpy/scrcpy.exe"
alias reload="exec zsh"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias s="cd /mnt/c/Users/trymlh"
alias p="cd /mnt/d/projects"
alias b="cd /mnt/d/projects/bachelor/research"
alias x="exit"
alias bang='ddgr --gb --np'
alias wtr='curl wttr.in/'
alias wtr1='curl wttr.in/skøyenåsen'
alias o='xdg-open'
alias chrome='/bin/./chrome.sh'
alias hs='python3 /mnt/c/Users/trymlh/git_repos/bg-auto-tracker/QuickMenu.py'
alias b='cd ..'
alias hbr='sudo systemctl hibernate'
alias arena='python /home/trymlh/search-arena.py'
alias st='cd /run/media/trymlh/_store/'
alias nano-m='sudo sh /home/scripts/toggle_nano_mouse.sh'
alias p='python '
alias po='cd /store/projects/'

# Plugins
plugins=(z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
