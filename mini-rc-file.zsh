export PATH=/opt/local/bin:$PATH

COLOR_USER_HOST=white
COLOR_USER_PATH=yellow
COLOR_USER_MARK=white

COLOR_ROOT_HOST=red
COLOR_ROOT_PATH=red
COLOR_ROOT_MARK=red

PROMPT_END_CHAR="%(#.%{💥%1G%}.%{🌀%1G%}) "
PROMPT_PREAMBLE="%{👽%1G%} "

if [[ ! -d ~/.zsh ]]; then
  if which git > /dev/null; then
    echo git clone https://github.com/digiwano/zshconfs.git ~/.zsh
  else
    echo "can't fetch git repo! zshconfs FAIL!"
  fi
fi

source ~/.zsh/zshrc.zsh

## commented out for now since i dont use rvm lately
# if [[ "$(id -u)" != "0" ]] ; then
#  [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
# fi
