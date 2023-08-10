#
# ~/.zshrc
#

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=9999
SAVEHIST=2000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Haotian/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

### Plugins
# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k


# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

# User configuration
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias apu="sudo ifconfig ap0 up"
alias apd="sudo ifconfig ap0 down"
alias c="clear"
alias cls="c && ll"
alias cC="sudo rm -rf ~/.cache/*"
alias ct="cd ~/tmp"
alias cip="curl cip.cc"
alias cy="curl -vv www.youtube.com"
alias cg="cargo"
alias du="du -h"
alias dk="docker"
alias gpt="tgpt"
alias g="rg"
alias gh="cd ~ && clear"
alias glog="git log --pretty=oneline --all --graph --abbrev-commit"
alias 'git log'="git log --all --graph --decorate"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"
alias hs="hexo clean && hexo g && hexo s"
alias hn="hexo new"
alias hd="hexo d"
alias js="joshuto"
alias kcp="kdeconnect-cli -n V2048A --share"
alias kcw="kdeconnect-cli -n WayDroid x86_64 --share"
alias ls="ls --color=auto"
alias lg="lazygit"
alias ll="ls -al --color=auto"
alias ne="neofetch | lolcat"
alias n="neofetch"
alias nv="nvim"
alias nvz="nvim ~/.zshrc"
alias sc="systemctl"
alias sz="source ~/.zshrc"
alias sn="sudo nvim"
alias t="tmux"
alias ts="sudo timeshift --create --tags D"
alias tsd="sudo timeshift --delete"
alias u="yay"
alias up="cd .."
alias venv="source ./venv/bin/activate"
alias vm="sc start vmware-usbarbitrator vmware-networks"
alias yc="yay -Scc"

export PATH=$PATH:/home/lilin/.cargo/bin

# Set Terminal's language
export LANGUAGE=en_US
export LANG=en_US.UTF-8

# Auto change dir---ranger
ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

# gp . "update"
gp() {
    git add "$1" && git commit -m "$2" && git push
}

# tgpt translate en to zh
ez() {
  tgpt "translate English '$1' to Chinese"
}
# tgpt translate zh to en
ze() {
  tgpt "translate Chinese '$1' to English"
}

# Make dir and cd
mcd() {
    mkdir -p "$1"
    cd "$1"
}

source /usr/share/autojump/autojump.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
