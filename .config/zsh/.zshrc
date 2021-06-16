# prompt
fpath+=$XDG_CONFIG_HOME/zsh/pure
autoload -U promptinit; promptinit
# zstyle :prompt:pure:prompt:success color '#ebdbb2'
# zstyle :prompt:pure:path color yellow
prompt pure

# one line prompt
prompt_newline='%666v'

# show jobs count
PROMPT=' %F{magenta}%(1j.[%j] .)%(?.%F{magenta}.%F{red})${PURE_PROMPT_SYMBOL:-❯}%f '

# clear screen with extra new line
custom_prompt_pure_clear_screen() {
zle -I # Enable output to terminal.
print -n '\e[2J\e[3;0H' # Clear screen and move cursor to (4, 0).
zle .redisplay # Redraw prompt.
}
zle -N clear-screen custom_prompt_pure_clear_screen

# color zsh
autoload -U colors && colors
setopt autocd

# Lines configured by zsh-newuser-install
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt autocd extendedglob
unsetopt beep

# completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
setopt globdots
setopt noclobber
# _comp_options+=(globdots)       # Include hidden files.


# vi mode =================
bindkey -v
export KEYTIMEOUT=20

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -v '^R' history-incremental-pattern-search-backward

# Change cursor shape for different vi modes.
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
        [[ $1 = 'underline' ]]; then
        echo -ne '\e[2 q'
    elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
        echo -ne '\e[6 q'
    fi
}
zle -N zle-keymap-select
bindkey -M viins '^o' vi-cmd-mode

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[2 q' ;} # Use underline shape cursor for starting new program.

# edit in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# vi mode =================


# fzfs
source /usr/share/fzf/key-bindings.zsh
cd_fzf() {
    cd "$HOME/$(fd -td -E ".git/" -E ".cache/" --base-directory $HOME | fzf --preview="tree -L 1 {}" --bind="tab:toggle-preview" --preview-window=:hidden)"
    zle reset-prompt
}
zle -N cd_fzf
bindkey '^hf' cd_fzf
bindkey -r '\ec'
bindkey '^f' fzf-cd-widget

# eye candy
echo "\n"
pfetch
eval$(thefuck --alias)

# must be the end of file
source $XDG_CONFIG_HOME/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $XDG_CONFIG_HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
