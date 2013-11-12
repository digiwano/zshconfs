
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete
zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle ':completion:*' force-list always
zstyle :compinstall filename ~/.zshrc

autoload -U compinit
compinit -i
# End of lines added by compinstall
