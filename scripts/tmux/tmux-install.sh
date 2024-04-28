#!/bin/bash

update_tmux_install() {
    if command -v tmux &>/dev/null; then
        echo "tmux already installed"
    else
        distro=echo $(cat /etc/*-release | grep DISTRIB_ID)
        if [[ $distro == *"Debian" ]]; then
            sudo apt install tmux
        elif [[ $distro == *"Ubuntu" ]]; then
            sudo apt install tmux
        elif [[ $distro == *"Arch" ]]; then
            sudo pacman -S tmux
        fi
    fi
}

update_tmux_install
