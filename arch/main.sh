#!/bin/bash

if [ $# -eq 0 ]; then
    proot-distro login archlinux
elif [ "$1" == "--setup" ]; then
    pkg install proot-distro -y
elif [ "$1" == "--install" ]; then
    proot-distro install archlinux
elif [ "$1" == "--delete" ]; then
    proot-distro remove archlinux
elif [ "$1" == "--gui"]; then
    proot-distro login archlinux --shared-tmp
elif [ "$1" == "--delete--cmd" ]; then
    rm /data/data/com.termux/files/usr/bin/archlinux
elif [ "$1" == "--help" ]; then
    echo "Usage:"
    echo "  archlinux                 : Login
    echo "  archlinux --setup         : Install proot-distro"
    echo "  archlinux --install       : Install archlinux"
    echo "  archlinux --delete        : Remove archlinux"
    echo "  archlinux --delete--cmd   : Remove the archlinux command"
    echo "  archlinux --help          : Show this help message"
    echo " archlinux --gui              Start GUI.in archlinux
else
    echo "Invalid argument. Use 'archlinux --help' for usage instructions."
fi
