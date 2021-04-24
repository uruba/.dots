# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '${HOME}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors
colors
PROMPT="%{$fg[yellow]%}%* %{$fg[blue]%}%d %(?.$fg[green]✓.$fg[red]%?) 
%(3L.$fg[red]%L .)%{$fg[yellow]%}%%%{$reset_color%} "

source ~/.config/.aliases
source ~/.config/.aliases.local

source $HOME/.config/zsh/key-bindings.zsh

bindkey "^[[H"  beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[4h" overwrite-mode
bindkey "^[[P"  delete-char

# save path on cd (chpwd is a zsh hook) and spawned subshell
function chpwd {
  pwd > ~/.last_dir
}

if [[ $SHLVL -ge 3 ]]; then
  chpwd
fi

# restore last saved path on launch
if [[ -f ~/.last_dir ]]; then
  cd $(cat ~/.last_dir)
fi

source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

eval `keychain --eval --quiet --agents ssh,gpg id_rsa`
