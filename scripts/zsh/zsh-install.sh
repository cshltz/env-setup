#!/bin/bash

update_zsh_install() {
    if command -v zsh &>/dev/null; then
        echo "zsh already installed. Update it in this code block."
    else
        distro=echo $(cat /etc/*-release | grep DISTRIB_ID)
        if [[ $distro == *"Debian" ]]; then
            sudo apt install zsh
        elif [[ $distro == *"Ubuntu" ]]; then
            sudo apt install zsh
        elif [[ $distro == *"Arch" ]]; then
            sudo pacman -S zsh
        fi

        chsh -s /bin/zsh || exit
        source "$HOME/.config/zsh/.zshrc"
    fi
}

update_zsh_install
