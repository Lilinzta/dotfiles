# Ok, This is automatically added by some ptograms.

# neovim switcher
alias lvim="NVIM_APPNAME=LazyVim nvim"
alias vimir="NVIM_APPNAME=ayamir nvim"
alias chad="NVIM_APPNAME=NvChad nvim"
function nvs() {
  items=("default" "ayamir" "LazyVim" "NvChad")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config ❯ " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo 'Nothing selected'
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}
bindkey -s ^n "nvims\n"

# Shell-GPT integration ZSH v0.1
_sgpt_zsh() {
if [[ -n "$BUFFER" ]]; then
    _sgpt_prev_cmd=$BUFFER
    BUFFER+="⌛"
    zle -I && zle redisplay
    BUFFER=$(sgpt --shell <<< "$_sgpt_prev_cmd")
    zle end-of-line
fi
}
zle -N _sgpt_zsh
bindkey ^q _sgpt_zsh
# Shell-GPT integration ZSH v0.1

source /home/lilin/.config/broot/launcher/bash/br

# Activate Mambaforge
[ -f /opt/mambaforge/etc/profile.d/conda.sh ] && source /opt/mambaforge/etc/profile.d/conda.sh
