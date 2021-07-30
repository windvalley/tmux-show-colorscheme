#!/usr/bin/env bash
# print_current_font_style.sh
#

alacritty_conf=~/.config/alacritty/alacritty.yml

current_font_style=$(grep 'style:' $alacritty_conf | head -1 | awk '{print $NF}')

echo -n "$current_font_style"
