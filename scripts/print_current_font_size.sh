#!/usr/bin/env bash
# print_current_font_size.sh
#

alacritty_conf=~/.config/alacritty/alacritty.yml

current_font_size=$(awk '/  size:/{print $NF}' $alacritty_conf)

echo -n "$current_font_size"
