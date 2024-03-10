zinit light-mode wait lucid depth=1 for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
 blockf \
    zsh-users/zsh-completions

zinit ice wait lucid depth=1
zinit light MichaelAquilina/zsh-you-should-use

zi ice as"completion"
zi snippet OMZP::/docker/completions/_docker

# oh-my-zsh libs
zi light-mode lucid for \
    OMZL::/history.zsh \
    OMZL::/functions.zsh \
    OMZL::/completion.zsh \
    OMZL::/directories.zsh \
    OMZL::/key-bindings.zsh \
    OMZL::/theme-and-appearance.zsh

# oh-my-zsh plugins
zi light-mode wait lucid for \
    OMZP::/z/z.plugin.zsh \
    OMZP::/cp/cp.plugin.zsh \
    OMZP::/pip/pip.plugin.zsh \
    OMZP::/sudo/sudo.plugin.zsh \
    OMZP::/python/python.plugin.zsh \
    OMZP::/history/history.plugin.zsh \
    OMZP::/vi-mode/vi-mode.plugin.zsh \
    OMZP::/extract/extract.plugin.zsh \
    OMZP::/archlinux/archlinux.plugin.zsh \
    OMZP::/gitignore/gitignore.plugin.zsh \
    OMZP::/common-aliases/common-aliases.plugin.zsh \
    OMZP::/colored-man-pages/colored-man-pages.plugin.zsh \
    OMZP::/command-not-found/command-not-found.plugin.zsh


eval "$(starship init zsh)"
