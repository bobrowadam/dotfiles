#!/usr/bin/env bash

brew tap d12frosted/emacs-plus;
brew install emacs-plus --HEAD --with-jansson --with-modern-icon;
brew install gpg2;
brew install bat;
brew install gawk;
brew install http;
# rust:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
rustup component add rls --toolchain stable-x86_64-apple-darwin;
