if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
#PROMPT='%{$fg[$NCOLOR]%}%m%{$reset_color%} %2~ $(git_prompt_info)%{$reset_color%}%B»%b '
PROMPT='%{$fg[$NCOLOR]%}%m%{$fg[yellow]%} %2~ %{$reset_color%}$(git_prompt_info)%{$fg[yellow]%}%B»%b '
