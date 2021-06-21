#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

setxkbmap hu

export DESKTOP_SESSION=openbox-session
export XDG_SESSION_TYPE=X11
export UXVRT_PERL_LIB=$HOME/.urxvt/ext

xrdb -merge .Xresources

start-pulseaudio-x11 &
exec openbox-session

