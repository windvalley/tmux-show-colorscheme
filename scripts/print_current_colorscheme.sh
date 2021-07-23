#!/usr/bin/env bash
# print_current_colorscheme.sh
#

alacritty_conf=~/.config/alacritty/alacritty.yml

current_colorscheme=$(awk -F'*' '/^colors:/{print $2}' $alacritty_conf)

echo -n "$current_colorscheme"
