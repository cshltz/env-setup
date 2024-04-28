#!/bin/bash

update_nvim_install() {
    distro="$(cat /etc/*-release | grep DISTRIB_ID)"
    if [[ $distro == *"Arch" ]]; then
        echo "Arch detected :)"
        sudo pacman -S neovim
    else
        echo "Ah shit, I gotta do it myself because apt sucks balls."

        git_dir=$XDG_CONFIG_HOME/install
        git clone "https://github.com/neovim/neovim" "$git_dir/neovim"
        cd "$git_dir/neovim" || exit
        git checkout stable
        make CMAKE_BUILD_TYPE=RelWithDebInfo
        sudo make install

        echo "Removing repo directory"
        rm -rf "$git_dir"
    fi
}

update_nvim_install
