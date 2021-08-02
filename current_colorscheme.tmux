#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

interpolations=(
    "\#{current_colorscheme}"
    "\#{current_font}"
    "\#{current_font_size}"
    "\#{current_font_style}"
    "\#{current_opacity}"
)

commands=(
    "#($CURRENT_DIR/scripts/print_current_colorscheme.sh)"
    "#($CURRENT_DIR/scripts/print_current_font.sh)"
    "#($CURRENT_DIR/scripts/print_current_font_size.sh)"
    "#($CURRENT_DIR/scripts/print_current_font_style.sh)"
    "#($CURRENT_DIR/scripts/print_current_opacity.sh)"
)

cd "$CURRENT_DIR" || exit 1

source scripts/shared.sh

do_interpolation() {
    local all_interpolated="$1"

    for ((i = 0; i < ${#commands[@]}; i++)); do
        all_interpolated=${all_interpolated//${interpolations[$i]}/${commands[$i]}}
    done

    echo "$all_interpolated"
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
