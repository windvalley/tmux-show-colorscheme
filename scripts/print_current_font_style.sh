#!/usr/bin/env bash
# print_current_font_style.sh
#

script_dir=$(cd "$(dirname $0)" && pwd)
source $script_dir/env.zsh

current_font_style=$(grep -Ev '^#' $ALACRITTY_PRIVATE_CONF | awk -F'"' '/^normal /{print $(NF-1)}')

echo -n "$current_font_style"
