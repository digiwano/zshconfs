
ZKBDFILE=~/.zkbd-$TERM-$VENDOR-$OSTYPE
if [[ ! -f $ZKBDFILE ]]; then
  typeset -g -A key
  key[Backspace]='^?'
  key[Insert]='^[[2~'
  key[Home]='^[[H'
  key[End]='^[[F'
  key[Home2]='^[[1~'
  key[End2]='^[[4~'
  key[PageUp]='^[[5~'
  key[Delete]='^[[3~'
  key[PageDown]='^[[6~'
  key[Up]='^[[A'
  key[Left]='^[[D'
  key[Down]='^[[B'
  key[Right]='^[[C'
  key[Menu]=''

fi

## These things tend to change from termtype to termtype so we dynamically set them up
[[ -f $ZKBDFILE ]]         && source $ZKBDFILE
[[ -n ${key[Left]} ]]      && bindkey "${key[Left]}" backward-char
[[ -n ${key[Right]} ]]     && bindkey "${key[Right]}" forward-char
[[ -n ${key[Up]} ]]        && bindkey "${key[Up]}" history-search-backward
[[ -n ${key[Down]} ]]      && bindkey "${key[Down]}" history-search-forward
[[ -n ${key[Home]} ]]      && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[End]} ]]       && bindkey "${key[End]}" end-of-line
[[ -n ${key[Home2]} ]]     && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[End2]} ]]      && bindkey "${key[End]}" end-of-line
[[ -n ${key[Delete]} ]]    && bindkey "${key[Delete]}" delete-char-or-list
[[ -n ${key[Insert]} ]]    && bindkey "${key[Insert]}" which-command
[[ -n ${key[PageUp]} ]]    && bindkey "${key[PageUp]}" insert-last-word
[[ -n ${key[PageDown]} ]]  && bindkey "${key[PageDown]}" menu-expand-or-complete
bindkey "^\M-M" accept-and-infer-next-history
