# aliases
source $HOME/.config/shell/aliasrc

# set prompt
precmd() { PROMPT="%F{blue}%~ %F{yellow}%(1j.[%j] .)%(?.%F{blue}.%F{red})❯%f " }
# reset to steady block cursor
preexec() { printf '\e[2 q' }

# colors
eval $(dircolors $XDG_CONFIG_HOME/shell/gruvbox_dircolors)
autoload -U colors && colors

# misc
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
setopt hist_ignore_all_dups
setopt extendedglob
setopt rmstarsilent
unsetopt prompt_cr prompt_sp

# completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump
setopt globdots
setopt noclobber

source $ZDOTDIR/zsh_fzf
source $ZDOTDIR/zsh_vi

# gotta be at the end
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
