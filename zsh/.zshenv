source ~/.config/.env
source ~/.config/.env.system
source ~/.config/.aliases

path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
export PATH

eval `keychain --eval --quiet --agents ssh,gpg id_rsa`
