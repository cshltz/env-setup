#!/bin/bash

update_nvim_config() {
    echo "Copying nvim config"

    rm -rf "$XDG_CONFIG_HOME/nvim"
    mkdir -p "$XDG_CONFIG_HOME/nvim"
    cp -a "$ENV_SETUP/config/nvim/." "$XDG_CONFIG_HOME/nvim/"
}

update_nvim_config
