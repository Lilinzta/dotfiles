# aliyunpan-go config dir
export ALIYUNPAN_CONFIG_DIR=/home/lilin/.config/aliyunpan

# PATH
export PATH=$PATH:$HOME/.cargo/bin:$HOME/.local/bin

# micromamba root prefix
export MAMBA_ROOT_PREFIX=/home/lilin/.mamba

# fzf color scheme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# man page color scheme
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# set locale
export LANGUAGE=en_US
export LANG=en_US.UTF-8
