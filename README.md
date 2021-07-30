# tmux-show-colorscheme

Only fit for `windvalley/dotfiles`

## Description

It will show current colorscheme and font of Alacritty in tmux status bar.

## Usage

Add plugin to the list of TPM plugins in .tmux.conf:

```text
set -g @plugin 'windvalley/tmux-show-colorscheme#main'
```

Hit `prefix + I` to fetch the plugin and source it.

`#{current_colorscheme}`, `#{current_font}` and `#{current_font_size}`
`#{current_font_style}` interpolation should now work.

Add `#{current_colorscheme}`, `#{current_font}` `#{current_font_size}`
`#{current_font_style}` format string to your existing status-right tmux option.
