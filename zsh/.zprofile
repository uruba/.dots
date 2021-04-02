export XDG_DATA_DIRS="$HOME/.nix-profile/share:/usr/local/share/:/usr/share/"

path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
export PATH

source ~/.config/.env
source ~/.config/.env.system
source "$HOME/.cargo/env"
