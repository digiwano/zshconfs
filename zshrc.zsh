function _z_require() {
  source ~/.zsh/$1.zsh
}

zmodload -i zsh/zle

_z_require path
_z_require options
_z_require functions
_z_require aliases
_z_require keys
_z_require completion
_z_require prompt

unfunction _z_require # get rid of this
