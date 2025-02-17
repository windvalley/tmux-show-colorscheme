#!/usr/bin/env bash
# print_current_font.sh
#

script_dir=$(cd "$(dirname $0)" && pwd)
source $script_dir/env.zsh

current_opacity=$(grep -Ev '^#' $ALACRITTY_PRIVATE_CONF | awk '/^opacity /{print $NF}')

echo -n "$current_opacity"
