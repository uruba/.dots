export XDG_DATA_DIRS="$HOME/.nix-profile/share:/usr/local/share/:/usr/share/"

path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
path+=("$(go env GOPATH)/bin")
export PATH

source ~/.config/.env
# source system specific environment variables
if [[ -f ~/.config/.system.env ]]; then
    echo ".system.env"
    source ~/.config/.system.env
fi
# source nnn environment variables
if [[ -f ~/.config/.nnn.env ]]; then
    echo ".nnn.env"
    source ~/.config/.nnn.env
fi

source "$HOME/.cargo/env"
