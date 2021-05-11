path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
path+=("$(go env GOPATH)/bin")
export PATH

source ~/.config/.env
# source system specific environment variables
if [[ -f ~/.config/.system.env ]]; then
    source ~/.config/.system.env
fi
# source nnn environment variables
if [[ -f ~/.config/.nnn.env ]]; then
    source ~/.config/.nnn.env
fi

source "$HOME/.cargo/env"
