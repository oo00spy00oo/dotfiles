# THEME
# zinit light denysdovhan/spaceship-prompt

# Add fzf-tab first
zinit light Aloxaf/fzf-tab

zinit wait lucid for \
    hlissner/zsh-autopair \
    urbainvaes/fzf-marks \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
    blockf \
        zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

zinit lucid for \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-history-substring-search \
    marzocchi/zsh-notify \
    zdharma/zshelldoc \
    zdharma/zui \
    zdharma/zplugin-crasis \
    zdharma/zzcomplete \
    zdharma/zconvey \
    zdharma/history-search-multi-word

# Git section
zinit light wfxr/forgit
zinit light tj/git-extras
zinit light bobthecow/git-flow-completion
zinit as"null" wait"2" lucid for \
    sbin  Fakerr/git-recall \
    sbin  paulirish/git-open \
    sbin  paulirish/git-recent \
    sbin  davidosomething/git-my

zinit lucid light-mode for \
    zpm-zsh/ls \
    chrissicool/zsh-bash \
    arzzen/calc.plugin.zsh \
    b4b4r07/emoji-cli \
    changyuheng/fz \
    mafredri/zsh-async \
    qoomon/zsh-lazyload \
    zpm-zsh/colors \
    zpm-zsh/clipboard \
    zpm-zsh/material-colors \
    zpm-zsh/pr-zcalc \
    zpm-zsh/zshmarks \
    psprint/zsh-cmd-architect \
    psprint/zsh-editing-workbench \
    supercrabtree/k \
    zdharma/zsh-tig-plugin \
    zdharma/declare-zsh \
    zpm-zsh/colorize \
    ChrisPenner/copy-pasta \
    leophys/zsh-plugin-fzf-finder \
    b4b4r07/enhancd \
    zdharma/zbrowse \
    zpm-zsh/autoenv \
    mbhynes/fzf-gcloud

# httpstat
zinit ice as"program" cp"httpstat.sh -> httpstat" pick"httpstat"
zinit light b4b4r07/httpstat

# zsh-fzf-history-search
zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

# Autocompletion
zinit light g-plane/zsh-yarn-autocompletions
zinit light Dabz/kafka-zsh-completions

# zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
#     atpull'%atclone' pick"clrs.zsh" nocompile'!' \
#     atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit light trapd00r/LS_COLORS

# Diff-So-Fancy
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

# nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
zinit light lukechilds/zsh-nvm

# For fzf: https://zdharma.org/zinit/wiki/Zinit-Packages/
zinit pack for fzf
zinit pack for dircolors-material
zinit pack for ls_colors

zplugin pack for @asciidoctor
zplugin pack for ecs-cli
zplugin pack for doctoc

# Tmux
# zinit light zpm-zsh/tmux

# zinit ice atload"zpcdreplay" atclone'./zplug.zsh'
# zinit light marlonrichert/zsh-autocomplete
# zinit light Dbz/kube-aliases
# zinit light zdharma/zsh-startify
# zinit light jeffreytse/zsh-vi-mode