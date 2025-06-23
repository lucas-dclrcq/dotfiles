#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
type vault >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    brew install vault-cli vault
    ;;
Linux)
    sudo pacman -S git base-devel vault
    type yay >/dev/null 2>&1 && exit
    git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac