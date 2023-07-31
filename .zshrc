source $ZSH/oh-my-zsh.sh

function zvm_before_init() {
  zvm_bindkey viins '^[[A' history-beginning-search-backward
  zvm_bindkey viins '^[[B' history-beginning-search-forward
  zvm_bindkey vicmd '^[[A' history-beginning-search-backward
  zvm_bindkey vicmd '^[[B' history-beginning-search-forward
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

