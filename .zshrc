if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit

alias sudo=doas

zinit for \
  zsh-users/zsh-completions \
  zsh-users/zsh-autosuggestions \
  zdharma-continuum/fast-syntax-highlighting

eval "$(starship init zsh)"
