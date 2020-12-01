source ~/.config/.env
source ~/.config/.env.system
source ~/.config/.aliases

eval `keychain --eval --quiet --agents ssh,gpg id_rsa`
