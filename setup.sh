#!/bin/sh
nix-env -iA nixpkgs.stow
nix-env -iA nixpkgs.neovim
stow --restow --target="$HOME" files
