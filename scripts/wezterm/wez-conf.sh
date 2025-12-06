#!/bin/bash

update_wez_profile() {
    echo "Copying wezterm config"
    cp -a "$ENV_SETUP/config/wezterm/." "$HOME"
}

update_wez_profile
