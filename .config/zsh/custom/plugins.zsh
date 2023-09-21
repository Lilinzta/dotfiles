zinit light-mode wait lucid depth=1 for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
 blockf \
    zsh-users/zsh-completions

zinit ice wait lucid depth=1
zinit light MichaelAquilina/zsh-you-should-use

# oh-my-zsh libs
zi light-mode lucid for \
    OMZ::lib/history.zsh \
    OMZ::lib/functions.zsh \
    OMZ::lib/completion.zsh \
    OMZ::lib/directories.zsh \
    OMZ::lib/key-bindings.zsh \
    OMZ::lib/theme-and-appearance.zsh

# oh-my-zsh plugins
zi light-mode wait lucid for \
    OMZ::plugins/z/z.plugin.zsh \
    OMZ::plugins/cp/cp.plugin.zsh \
    OMZ::plugins/pip/pip.plugin.zsh \
    OMZ::plugins/sudo/sudo.plugin.zsh \
    OMZ::plugins/python/python.plugin.zsh \
    OMZ::plugins/history/history.plugin.zsh \
    OMZ::plugins/vi-mode/vi-mode.plugin.zsh \
    OMZ::plugins/extract/extract.plugin.zsh \
    OMZ::plugins/archlinux/archlinux.plugin.zsh \
    OMZ::plugins/gitignore/gitignore.plugin.zsh \
    OMZ::plugins/common-aliases/common-aliases.plugin.zsh \
    OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh \
    OMZ::plugins/command-not-found/command-not-found.plugin.zsh


zinit ice lucid depth=1
zinit light romkatv/powerlevel10k
