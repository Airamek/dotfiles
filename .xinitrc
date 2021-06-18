#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

export DESKTOP_SESSION=plasma
export XDG_SESSION_TYPE=X11
export UXVRT_PERL_LIB=$HOME/.urxvt/ext

xrdb -merge .Xresources
#export KDEWM=/usr/bin/i3

start-pulseaudio-x11 &
exec startplasma-x11
#exec i3

