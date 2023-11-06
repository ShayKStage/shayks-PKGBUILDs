#!/bin/bash

if [ "x$1" == "x" ] ; then
    exit 1
fi

CHROOT="$1/chroot"

cd $1

updpkgsums

arch-nspawn $CHROOT/root pacman -Syu
makechrootpkg -c -r $CHROOT