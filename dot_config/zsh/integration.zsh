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

# asdf
[ -f /usr/local/opt/asdf/asdf.sh ] && . /usr/local/opt/asdf/asdf.sh

# pyenv
eval "$(pyenv init -)"

# Add Startify
# zsh-startify

# mozjpeg
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"

# Mcfly - ctrl + r replacement
if [ $commands[mcfly] ]; then
    eval "$(mcfly init zsh)"
fi

eval "$(zoxide init zsh)"

# Starship theme
if [ $commands[starship] ]; then
    eval "$(starship init zsh)"
fi

neofetch