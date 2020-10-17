#!/usr/bin/env bash
mkdir ~/source;
touch ~/secrets.sh

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh;
brew install ripgrep;
brew install ispell
brew tap d12frosted/emacs-plus;
brew install emacs-plus --with-jansson --with-debug --with-xwidgets --with-modern-sexy-v1-icon
brew install gpg2;
brew install bat; # cat in rust
brew install exa; # ls in rust
brew install fd; # find in rust

brew install procs; # ps in rust
brew install gawk;
brew install http;
brew install zsh;
chsh -s /bin/zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# rust:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
rustup component add rls --toolchain stable-x86_64-apple-darwin;
