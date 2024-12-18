source $HOME/.config/shell/profile
source $XDG_CONFIG_HOME/shell/aliasrc

# unlocking bitwarden (and gpg-agent) before starting x11 server
if [[ -z "$DISPLAY" && -z "$BW_SESSION" ]]; then
	export BW_SESSION=$(pass bw_session)
fi

# startx at tty1 login
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
	startx $XDG_CONFIG_HOME/X11/xinitrc
fi
