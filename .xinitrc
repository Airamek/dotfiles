#!/bin/sh

export userresources=$HOME/.Xresources
export sysresources=/etc/X11/xinit/.Xresources


export DESKTOP_SESSION=plasma
export XDG_SESSION_TYPE=X11
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

export UXVRT_PERL_LIB=$HOME/.urxvt/ext

xrdb -merge .Xresources

export $(dbus-launch)
exec pulseaudio --start &
exec startplasma-x11

