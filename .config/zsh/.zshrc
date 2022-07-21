KEYTIMEOUT=1

# aliases
source $HOME/.config/shell/aliasrc

# prompt
PROMPT="%F{blue}%~ %F{yellow}%(1j.[%j] .)%(?.%F{blue}.%F{red})>%f "

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
setopt globdots
setopt noclobber
unsetopt prompt_cr prompt_sp
setopt nolistambiguous

# completion
autoload -Uz compinit
zmodload zsh/complist
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
compinit -d $XDG_CACHE_HOME/zsh/zcompdump
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -M menuselect '^[' send-break

bindkey -e
autoload edit-command-line &&
    zle -N edit-command-line &&
    bindkey '^x^e' edit-command-line

source $ZDOTDIR/zsh_fzf

# gotta be at the end
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
