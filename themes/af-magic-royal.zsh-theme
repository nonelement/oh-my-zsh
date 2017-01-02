# af-magic.zsh-theme
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# color vars
eval dgray='$FG[237]'
eval chart='$FG[190]'
eval b='$FG[092]' #darkpurple
eval p='$FG[141]' #lightpurple
eval t='$FG[039]'

# primary prompt
PROMPT='
$p%~\
$(git_prompt_info) \
$t%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$dgray%n@%m%{$reset_color%}%'
else
	RPROMPT='$dgray%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$b(branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$chart!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$b)%{$reset_color%}"
