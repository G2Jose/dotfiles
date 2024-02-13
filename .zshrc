function zvm_before_init() {
  zvm_bindkey viins '^[[A' history-beginning-search-backward
  zvm_bindkey viins '^[[B' history-beginning-search-forward
  zvm_bindkey vicmd '^[[A' history-beginning-search-backward
  zvm_bindkey vicmd '^[[B' history-beginning-search-forward

  # Allow option deleting words without leaving insert mode
  zvm_bindkey viins '^[^?' backward-kill-word
}

plugins=(
  git
  zsh-autosuggestions
  zsh-vi-mode
  zsh-syntax-highlighting
  # history-substring-search
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
  forward-char
  end-of-line
  vi-forward-char
  vi-add-eol
)

ZSH_THEME="powerlevel10k/powerlevel10k"
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
