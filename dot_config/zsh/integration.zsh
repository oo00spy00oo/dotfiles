# Perl
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# kube-ps1
[ -f /usr/local/opt/kube-ps1/share/kube-ps1.sh ] && source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

# Add iterm2 shell integration
# https://iterm2.com/documentation-shell-integration.html
[ -f ~/.iterm2_shell_integration.zsh ] && source ~/.iterm2_shell_integration.zsh

# Auto jump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Kube-alias: Print the full command before running it
if [ $commands[kubectl] ]; then
    function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }
fi

# Web3j
[ -f ~/.web3j/source.sh ] && source ~/.web3j/source.sh

# asdf
[ -f /usr/local/opt/asdf/asdf.sh ] && . /usr/local/opt/asdf/asdf.sh

# pyenv
eval "$(pyenv init -)"

# Add Startify
# zsh-startify

# Homebrew Command Not Found
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
    source "$HB_CNF_HANDLER";
fi

# mozjpeg
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"

# colorize
export ZSH_COLORIZE_STYLE="colorful"

# Mcfly - ctrl + r replacement
if [ $commands[mcfly] ]; then
    eval "$(mcfly init zsh)"
fi

if [ $commands[zoxide] ]; then
    eval "$(zoxide init zsh)"
fi

# Starship theme
if [ $commands[starship] ]; then
    eval "$(starship init zsh)"
fi

# Go version manager: g
export GOPATH="$HOME/go"; export GOROOT="/usr/local/opt/go/libexec"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
alias ggovm="$GOPATH/bin/g"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

neofetch
