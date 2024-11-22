zinit light-mode wait lucid depth=1 for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
  zdharma-continuum/fast-syntax-highlighting \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions \
  blockf \
  zsh-users/zsh-completions

zinit ice wait lucid depth=1
zinit light MichaelAquilina/zsh-you-should-use

zinit ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zinit light starship/starship

# oh-my-zsh libs
zi light-mode lucid for \
  OMZL::/functions.zsh \
  OMZL::/completion.zsh \
  OMZL::/directories.zsh \
  OMZL::/key-bindings.zsh \
  OMZL::/theme-and-appearance.zsh

# oh-my-zsh plugins
zi light-mode wait lucid for \
  OMZP::/cp/cp.plugin.zsh \
  OMZP::/pip/pip.plugin.zsh \
  OMZP::/sudo/sudo.plugin.zsh \
  OMZP::/docker/docker.plugin.zsh \
  OMZP::/python/python.plugin.zsh \
  OMZP::/zoxide/zoxide.plugin.zsh \
  OMZP::/extract/extract.plugin.zsh \
  OMZP::/vi-mode/vi-mode.plugin.zsh \
  OMZP::/archlinux/archlinux.plugin.zsh \
  OMZP::/gitignore/gitignore.plugin.zsh \
  OMZP::/colored-man-pages/colored-man-pages.plugin.zsh
