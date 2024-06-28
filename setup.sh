#!/bin/sh
export XDG_CONFIG_HOME="$HOME"/.config
nix-env -iA nixpkgs.myPackages
stow --restow --target="$HOME" files
