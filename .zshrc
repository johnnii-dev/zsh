[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/git.zsh ]] && source ~/.zsh/git.zsh
[[ -f ~/.zsh/git.plugin.zsh ]] && source ~/.zsh/git.plugin.zsh
[[ -f ~/.zsh/aws-vault.zsh ]] && source ~/.zsh/aws-vault.zsh
if [ -f '/Users/johnnii.dev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/johnnii.dev/Downloads/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/johnnii.dev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/johnnii.dev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
source /Users/johnnii.dev/.docker/init-zsh.sh || true # Added by Docker Desktop

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load Starship
eval "$(starship init zsh)"

# Load Direnv
eval "$(direnv hook zsh)"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH

printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'"
