
setopt csh_junkie_loops   # these two allow: while (true) {blah}
setopt short_loops        # and other fun things
setopt beep               # beep on eror in zle
setopt no_bg_nice         # don't run bg programs at lower priority
setopt clobber            # allow > to truncate and >> to create
setopt equals             # allow = expansion; =cmd is the same as `which cmd`
setopt glob               # filename globbing. default, but here anyway.
setopt nohup              # allow background processes to keep running on exit
setopt long_list_jobs     # be verbose in jobs listing
setopt mark_dirs          # append / to dir names from globbing
setopt multios            # allows multiple | and > redirects on one command
setopt no_nomatch         # echo bars* will literaly print "bars*" if there's no file matching 'bars*'
setopt no_auto_menu       # only show a list, don't try to complete it menu style
setopt prompt_subst       # needed for prompt substitutions (for git prompt)

## pushd/popd options:
setopt pushd_ignoredups # no duplicates on directory stack
setopt pushd_silent     # don't talk about it
setopt pushd_to_home    # pushd alone goes to ~
setopt auto_pushd       # make cd do a pushd

# history stuff
setopt hist_ignore_dups
setopt extended_history
setopt inc_append_history
HISTSIZE=1000
