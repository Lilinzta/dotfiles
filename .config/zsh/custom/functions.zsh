# Auto change dir---ranger
function ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}
function bl() {
  echo $(($1 * 75)) | sudo tee /sys/class/backlight/intel_backlight/brightness
}
function fj() {
  sgpt "translate '$1' to Chinese"
}
function jf() {
  sgpt "translate '$1' to English"
}
function acp() {
  git add .
  git commit -m "$1"
  git push
}
function mcd() {
    mkdir -p "$1"
    cd "$1"
}
