#!/bin/bash

update_tmux_config() {
    echo "Copying tmux config"
    cp -a "$ENV_SETUP/config/tmux/." "$XDG_CONFIG_HOME/tmux/"
}

update_tmux_config
