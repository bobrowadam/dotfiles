export EDITOR="emacsclient"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
source $HOME/secrets.sh
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="$HOME/.local/lib/aws/bin/aws:$PATH"

# rust src path
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/x86_64-apple-darwin/lib
source $HOME/.cargo/env
