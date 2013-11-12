typeset -U PATH # path will never contain duplicate entries
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi
export PATH="$HOME/node_modules/.bin:/usr/local/bin:/usr/local/sbin:$PATH"
