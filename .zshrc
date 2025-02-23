# Lines configured by zsh-newuser-install
unset HISTFILE
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$PATH:$HOME/.cargo/bin"

# custom app
eval "$(atuin init zsh)"
eval "$(micromamba shell hook --shell zsh)"
eval "$(sheldon source)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
