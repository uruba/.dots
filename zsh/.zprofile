export XDG_DATA_DIRS="$HOME/.nix-profile/share:/usr/local/share/:/usr/share/"

path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
path+=("${HOME}/.cargo/bin")
export PATH

source ~/.config/.env
source ~/.config/.env.system

eval `keychain --eval --quiet --agents ssh,gpg id_rsa`
