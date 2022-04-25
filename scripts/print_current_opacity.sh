#!/usr/bin/env bash
# print_current_font.sh
#

alacritty_conf=~/.config/alacritty/alacritty.yml

current_opacity=$(awk '/^  opacity/{print $NF}' $alacritty_conf)

echo -n "$current_opacity"
