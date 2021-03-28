# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '${HOME}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors
colors
PROMPT="%{$fg_bold[yellow]%}%* %{$fg_bold[cyan]%}%d %(?.$fg_bold[green]✓.$fg_bold[red]%?) 
%(3L.$fg_bold[red]%L .)%{$fg_bold[yellow]%}%%%{$reset_color%} "

source ~/.config/.env
source ~/.config/.env.system
source ~/.config/.aliases

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
