# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/uruba/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors
colors
PROMPT="%{$fg_bold[cyan]%}%* %{$fg_bold[green]%}%d
%{$fg_bold[yellow]%}%% %{$reset_color%}"

source ~/.config/.env
source ~/.config/.env.system
source ~/.config/.aliases


