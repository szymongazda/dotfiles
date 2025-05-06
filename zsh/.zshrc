#ALIAS
alias c='clear'
alias ls='ls -al'
alias vim='nvim'
alias tx='tmux'

bindkey -v

#PLUGINS
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# SHELL INTEGRATION
eval "$(fzf --zsh)"

# pnpm
export PNPM_HOME="/home/sgazda/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
