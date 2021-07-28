#!/usr/bin/env bash
# print_current_font.sh
#

alacritty_conf=~/.config/alacritty/alacritty.yml

current_font=$(awk '/ family:/{print $(NF-2)}' $alacritty_conf | head -1)

echo -n "$current_font"
