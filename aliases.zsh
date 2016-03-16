
if [[ `uname` = 'Darwin' ]]; then
  # probably bsd tools. lets do ls -GF for colors
  alias ls='/bin/ls -GF'
elif [[ `uname` = 'FreeBSD' ]]; then
  # probably bsd tools. lets do ls -GF for colors
  alias ls='/bin/ls -GF'
else
  # assume linux. set gnu options
  alias ls='ls --color -F'
  alias cp='cp -i'
  alias mv='mv -i'
fi

# makes which prettier
alias which-command='whence -ca'

# expr should never glob, so we can use * unquoted with it
alias expr='noglob expr'

# pushdir/popdir
alias po=popd
alias pu=pushd
alias pd=popd

# shortcuts
alias so='source ~/.zshrc'
alias irc='ssh kekeke.org -t screen -x'
