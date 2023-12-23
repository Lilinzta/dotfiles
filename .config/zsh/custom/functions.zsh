# Auto change dir---ranger
function ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}
function jo() {
	ID="$$"
	mkdir -p /tmp/$USER
	OUTPUT_FILE="/tmp/$USER/joshuto-cwd-$ID"
	env joshuto --output-file "$OUTPUT_FILE" $@
	exit_code=$?

	case "$exit_code" in
		# regular exit
		0)
			;;
		# output contains current directory
		101)
			JOSHUTO_CWD=$(cat "$OUTPUT_FILE")
			cd "$JOSHUTO_CWD"
			;;
		# output selected files
		102)
			;;
		*)
			echo "Exit code: $exit_code"
			;;
	esac
}
function bl() {
  echo `expr $1 \* 75` | sudo tee /sys/class/backlight/intel_backlight/brightness
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
