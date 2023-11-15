#!/bin/sh

clear

[ -d "$HOME/motd" ] && MOTD="$HOME/motd"
[ -d "$HOME/.motd" ] && MOTD="$HOME/.motd"
[ -d "$PREFIX/motd" ] && MOTD="$PREFIX/motd"
export MOTD

for i in $(find $MOTD -maxdepth 1 -regex '.+/[0-9\-].+' -not -regex ".+\.disabled" | sort)
do
    bash $i
done

#unset MOTD
