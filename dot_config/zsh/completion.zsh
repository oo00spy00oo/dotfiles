# Kubectl
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
# Fly CLI
if [ $commands[fly] ]; then source <(fly completion --shell zsh); fi
# Terraform
if [ $commands[terraform] ]; then complete -o nospace -C /usr/local/bin/terraform terraform; fi
# Operator Framework
if [ $commands[operator-sdk] ]; then source <(operator-sdk completion zsh); fi
# Velero
if [ $commands[velero] ]; then
    source <(velero completion zsh);
    alias v=velero
    complete -F __start_velero v
fi
# FluxCD
if [ $commands[flux] ]; then source <(flux completion zsh); fi
# nvm (Node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# pip
eval $(pip3 completion --zsh)
# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# rbenv
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
# Git bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Helm
if [ $commands[helm] ]; then source <(helm completion zsh); fi
# eksctl
if [ $commands[eksctl] ]; then fpath=($fpath ~/.zsh/completion); fi
# Chezmoi
if [ $commands[chezmoi] ]; then source <(chezmoi completion zsh); fi