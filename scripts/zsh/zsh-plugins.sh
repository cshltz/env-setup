#!/bin/bash

update_zsh_plugins() {
    rm -rf "$HOME/.config/zsh/plugins/"

    #zsh-syntax-highlighting
    git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$ZDOTDIR/plugins/zsh-syntax-highlighting/"

    #catppuccin
    git clone "https://github.com/catppuccin/zsh-syntax-highlighting.git" "$ZDOTDIR/plugins/tmp"
    cp -v "$ZDOTDIR/plugins/tmp/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh" "$ZDOTDIR/plugins/catppuccin.zsh"

    #remove unneeded git repo
    rm -rf "$ZDOTDIR/plugins/tmp"
}

update_zsh_plugins
