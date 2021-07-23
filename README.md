# tmux-show-colorscheme

Only fit for `windvalley/dotfiles`

## Description

It will show current colorscheme of Alacritty in tmux status bar.

## Usage

Add plugin to the list of TPM plugins in .tmux.conf:

```text
set -g @plugin 'windvalley/tmux-show-colorscheme'
```

Hit `prefix + I` to fetch the plugin and source it.

`#{online_status}` interpolation should now work.

Add `#{online_status}` format string to your existing status-right tmux option.
