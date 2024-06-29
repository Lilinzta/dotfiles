# Auto change dir---yazi
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Auto change dir---ranger
function ra() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

# Auto change dir---joshuto
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

function ag() {
  cd /home/lilin/code/python/auto_giwifi_python_v2/
  ./venv/bin/python main.py
}

function bl() {
  echo `expr $1 \* 75` | sudo tee /sys/class/backlight/intel_backlight/brightness
}

function fj() {
  tgpt "translate '$1' to Chinese"
}

function jf() {
  tgpt "translate '$1' to English"
}

function mcd() {
    mkdir -p "$1"
    cd "$1"
}
