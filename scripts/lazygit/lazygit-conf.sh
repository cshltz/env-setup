#!/bin/bash

update_lazygit_config() {
    echo "Copying lazygit config"

    rm -rf "$XDG_CONFIG_HOME/lazygit/"
    mkdir -p "$XDG_CONFIG_HOME/lazygit/"
    cp -a "$ENV_SETUP/config/lazygit/." "$XDG_CONFIG_HOME/lazygit/"
}

update_lazygit_config
