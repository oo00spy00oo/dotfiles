# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk

# A Zinit-Zsh annex that allows to install plugins without specifying the GitHub user name.
zinit light-mode for zdharma-continuum/zinit-annex-unscope

zinit light-mode for zdharma-continuum/null

# THEME
# zinit light denysdovhan/spaceship-prompt

# Add fzf-tab first
zinit light Aloxaf/fzf-tab

zinit wait lucid for \
    hlissner/zsh-autopair \
    urbainvaes/fzf-marks \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma-continuum/fast-syntax-highlighting \
    blockf \
        zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

zinit lucid for \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-history-substring-search \
    marzocchi/zsh-notify \
    zdharma-continuum/zshelldoc \
    zdharma-continuum/zzcomplete \
    zdharma-continuum/zconvey \
    zdharma-continuum/history-search-multi-word

zinit light zdharma-continuum/zui
zinit light zdharma-continuum/zinit-crasis

zinit light zdharma-continuum/zsh-tig-plugin
zinit light zdharma-continuum/zsh-lint

zinit wait lucid for zdharma-continuum/zinit-console

# Git section
zinit load wfxr/forgit
zinit light tj/git-extras
zinit light bobthecow/git-flow-completion
zinit as"null" wait"2" lucid for \
    Fakerr/git-recall \
    paulirish/git-open \
    paulirish/git-recent \
    davidosomething/git-my

zinit load zdharma-continuum/zsh-navigation-tools

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
    zdharma-continuum/zsh-cmd-architect \
    zdharma-continuum/zsh-editing-workbench \
    supercrabtree/k \
    zdharma-continuum/zsh-tig-plugin \
    zdharma-continuum/declare-zsh \
    zpm-zsh/colorize \
    ChrisPenner/copy-pasta \
    leophys/zsh-plugin-fzf-finder \
    b4b4r07/enhancd \
    zdharma-continuum/zbrowse \
    zpm-zsh/autoenv \
    mbhynes/fzf-gcloud \
    hlissner/zsh-autopair \
    changyuheng/zsh-interactive-cd \
    denysdovhan/gitio-zsh

# httpstat
zinit ice as"program" cp"httpstat.sh -> httpstat" pick"httpstat"
zinit light b4b4r07/httpstat

# Auto-close and delete matching delimiters in zsh
zinit light hlissner/zsh-autopair

# zsh-fzf-history-search
zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

# Autocompletion
zinit light g-plane/zsh-yarn-autocompletions
zinit light Dabz/kafka-zsh-completions

if [ !$commands[dircolors] ]; then
    zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
        atpull'%atclone' pick"clrs.zsh" nocompile'!' \
        atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”';
fi
zinit light trapd00r/LS_COLORS

# atuin
zinit load ellie/atuin

# PZT Shorthand Syntax
zi snippet PZT::modules/environment
zi snippet PZT::modules/terminal

# Diff-So-Fancy
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma-continuum/zsh-diff-so-fancy

# zplugin light matthieusb/zsh-sdkman

# nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
zinit light lukechilds/zsh-nvm
zinit light zdharma-continuum/zsh-select

# For fzf: https://zdharma-continuum.org/zinit/wiki/Zinit-Packages/
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
# zinit light zdharma-continuum/zsh-startify
# zinit light jeffreytse/zsh-vi-mode
