#!/usr/bin/env bash
# print_current_font.sh
#

script_dir=$(cd "$(dirname $0)" && pwd)
source $script_dir/env.zsh

current_font=$(grep -vE '^#' $ALACRITTY_PRIVATE_CONF |
  awk -F'=' '/ family/{print $3}' | grep -vE '^#' |
  awk -F'"' '{print $2}' | awk '{print $1}')

echo -n "$current_font"
