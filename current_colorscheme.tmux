#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

current_colorscheme_name="#($CURRENT_DIR/scripts/print_current_colorscheme.sh)"
current_colorscheme_interpolation_string="\#{current_colorscheme}"

cd "$CURRENT_DIR" || exit 1

source scripts/shared.sh

do_interpolation() {
    local string="$1"
    local interpolated="${string/$current_colorscheme_interpolation_string/$current_colorscheme_name}"

    echo "$interpolated"
}

update_tmux_option() {
    local option option_value new_option_value

    option="$1"
    option_value="$(get_tmux_option "$option")"
    new_option_value="$(do_interpolation "$option_value")"

    set_tmux_option "$option" "$new_option_value"
}

main() {
    update_tmux_option "status-right"
    update_tmux_option "status-left"
}

main
