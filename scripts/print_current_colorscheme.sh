#!/usr/bin/env bash
# print_current_colorscheme.sh
#

script_dir=$(cd "$(dirname $0)" && pwd)
source $script_dir/env.zsh

current_colorscheme=$(awk -F'/' '/themes\/themes/{print $6}' $ALACRITTY_PRIVATE_CONF | awk -F. '{print $1}')

echo -n "$current_colorscheme"
