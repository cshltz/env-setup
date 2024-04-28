#!/bin/bash

update_zsh_config() {
    echo "Copying Zsh config"

    #move everything inside the folder so we dont delete plugins that already exist
    cp -a "$ENV_SETUP/config/zsh/." "$ZDOTDIR"
    mv "$ZDOTDIR/.zshenv" "$HOME"
}

update_zsh_config
