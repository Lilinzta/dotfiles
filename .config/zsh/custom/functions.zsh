# run auto_giwifi_python script
ag() {
  cd /home/lilin/code/python/auto_giwifi_python_v2/
  ./venv/bin/python main.py
}

# change brightness
bl() {
  echo $(expr $1 \* 75) | sudo tee /sys/class/backlight/intel_backlight/brightness
}

# fanyi by chatgpt
fy() {
  sgpt --role Translator $1
}

# auto change dir---joshuto
jo() {
  ID="$$"
  mkdir -p /tmp/$USER
  OUTPUT_FILE="/tmp/$USER/joshuto-cwd-$ID"
  env joshuto --output-file "$OUTPUT_FILE" $@
  exit_code=$?

  case "$exit_code" in
  # regular exit
  0) ;;
  # output contains current directory
  101)
    JOSHUTO_CWD=$(cat "$OUTPUT_FILE")
    cd "$JOSHUTO_CWD"
    ;;
  # output selected files
  102) ;;
  *)
    echo "Exit code: $exit_code"
    ;;
  esac
}

# mkdir and cd
mcd() {
  mkdir -p "$1"
  cd "$1"
}

# auto change dir---ranger
ra() {
  temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
  ranger --choosedir="$temp_file" -- "${@:-$PWD}"
  if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
    cd -- "$chosen_dir"
  fi
  rm -f -- "$temp_file"
}

# compress using xz
txz() {
  for arg in "$@"; do
    if [ -e "$arg" ]; then
      tar -cJf "$arg.tar.xz" "$arg"
      trash -rf "$arg"
    else
      echo "$arg does not exist"
    fi
  done
}

# compress using zst
tzst() {
  for arg in "$@"; do
    if [ -e "$arg" ]; then
      tar -I zstd -cf "$arg.tar.zst" "$arg"
      trash -rf "$arg"
    else
      echo "$arg does not exist"
    fi
  done
}

# split file
st() {
  for arg in "$@"; do
    if [ -e "$arg" ]; then
      split -a 1 -b 2000M "$arg" "$arg.p"
      trash -rf "$arg"
    else
      echo "$arg does not exist"
    fi
  done
}

# auto change dir---yazi
ya() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

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
