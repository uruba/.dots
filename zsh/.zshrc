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

path+=("${HOME}/scripts")
path+=("${HOME}/.local/bin")
export PATH

autoload -U colors
colors
PROMPT="%{$fg_bold[yellow]%}%* %{$fg_bold[cyan]%}%d %(?.$fg_bold[green]✓.$fg_bold[red]%?) 
%{$fg_bold[yellow]%}%% %{$reset_color%}"

source $HOME/.config/zsh/key-bindings.zsh

bindkey "^[[H"  beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[4h" overwrite-mode
bindkey "^[[P"  delete-char
