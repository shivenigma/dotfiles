# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/Users/vignesh.madhavan.ext/.zsh/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# antidote path from homebrew
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Created by `pipx` on 2025-11-21 15:02:32
export PATH="$PATH:/Users/vignesh.madhavan.ext/.local/bin"

# Docker/Colima configuration
export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"

# Added by GitButler installer
eval "$(but completions zsh)"

# Add a local file to add sonarqube token to env
# Load local, machine-specific secrets (not in dotfiles repo)
[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
