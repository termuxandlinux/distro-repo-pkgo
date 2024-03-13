#!/bin/bash

if [ $# -eq 0 ]; then
    proot-distro login debian
elif [ "$1" == "--setup" ]; then
    pkg install proot-distro -y
elif [ "$1" == "--install" ]; then
    proot-distro install debian
elif [ "$1" == "--delete" ]; then
    proot-distro remove debian
elif [ "$1" == "--gui"]; then
    proot-distro login debian --shared-tmp
elif [ "$1" == "--delete--cmd" ]; then
    rm /data/data/com.termux/files/usr/bin/debian
elif [ "$1" == "--help" ]; then
    echo "Usage:"
    echo "  debian                 : Login
    echo "  debian --setup         : Install proot-distro"
    echo "  debian --install       : Install debian"
    echo "  debian --delete        : Remove debian"
    echo "  debian --delete--cmd   : Remove the debian command"
    echo "  debian --help          : Show this help message"
    echo " debian --gui              Start GUI.in debian
else
    echo "Invalid argument. Use 'debian --help' for usage instructions."
fi
