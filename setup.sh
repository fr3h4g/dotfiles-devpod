#!/bin/sh
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs
ln -sf "$PWD/files/.config/nixpkgs/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix
nix-env -iA nixpkgs.myPackages
stow --restow --target="$HOME" files
