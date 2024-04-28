#!/bin/bash

update_tmux_plugins() {
    echo "Installing tmux catpuccin"
    rm -rf "$XDG_CONFIG_HOME/tmux/plugins/catppuccin"
    git clone -b v2.1.3 "https://github.com/catppuccin/tmux.git" "$XDG_CONFIG_HOME/tmux/plugins/catppuccin/"

    echo "Installing tmux-sensible"
    rm -rf "$XDG_CONFIG_HOME/tmux/plugins/tmux-sensible"
    git clone "https://github.com/tmux-plugins/tmux-sensible" "$XDG_CONFIG_HOME/tmux/plugins/tmux-sensible/"
}

update_tmux_plugins
