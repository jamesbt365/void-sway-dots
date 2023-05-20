if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=20000

# ops
setopt autocd
setopt notify



# hist
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit

alias s="kitty +kitten ssh" # eh
alias sudo=doas
alias ls=exa
alias v=nvim

zinit wait lucid light-mode for \
  zsh-users/zsh-completions \
  zsh-users/zsh-autosuggestions \
  zdharma-continuum/fast-syntax-highlighting \
  OMZP::fzf \
  OMZP::zsh-interactive-cd


eval "$(starship init zsh)"
