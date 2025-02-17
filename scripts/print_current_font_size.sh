#!/usr/bin/env bash
# print_current_font_size.sh
#

script_dir=$(cd "$(dirname $0)" && pwd)
source $script_dir/env.zsh

current_font_size=$(awk '/size =/{print $NF}' $ALACRITTY_PRIVATE_CONF)

echo -n "$current_font_size"
