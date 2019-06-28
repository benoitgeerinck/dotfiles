# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

antigen bundle zsh-users/zsh-completions

autoload bashcompinit
bashcompinit
for file in $ZSH/ansible/*-completion.bash;
do
  source $file
done
