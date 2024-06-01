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

# initialize micromamba
eval "$(micromamba shell hook --shell zsh)"
