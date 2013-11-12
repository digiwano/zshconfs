autoload colors
colors

# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'

[[ -z "$COLOR_USER_HOST" ]] && COLOR_USER_HOST='cyan'
[[ -z "$COLOR_USER_PATH" ]] && COLOR_USER_PATH='white'
[[ -z "$COLOR_USER_MARK" ]] && COLOR_USER_MARK='cyan'

[[ -z "$COLOR_ROOT_HOST" ]] && COLOR_ROOT_HOST='red'
[[ -z "$COLOR_ROOT_PATH" ]] && COLOR_ROOT_PATH='white'
[[ -z "$COLOR_ROOT_MARK" ]] && COLOR_ROOT_MARK='red'

[[ -z "$PROMPT_PREAMBLE" ]] && PROMPT_PREAMBLE="${PROMPT_HOST_OVERRIDE:-%m}:%n"

PROMPT="%B%(#.%{$fg[$COLOR_ROOT_HOST]%}.%{$fg[$COLOR_USER_HOST]%})$PROMPT_PREAMBLE%(#.%{$fg[$COLOR_ROOT_PATH]%}.%{$fg[$COLOR_USER_PATH]%}) %~ %(#.%{$fg[$COLOR_ROOT_MARK]%}.%{$fg[$COLOR_USER_MARK]%})${PROMPT_END_CHAR:-%#}%{$fg[default]%}%b "
RPROMPT='$(prompt_git_info)'
