#!/bin/bash

if [ $# -eq 0 ]; then
    proot-distro login ubuntu
elif [ "$1" == "--setup" ]; then
    pkg install proot-distro -y
elif [ "$1" == "--install" ]; then
    proot-distro install ubuntu
elif [ "$1" == "--delete" ]; then
    proot-distro remove ubuntu
elif [ "$1" == "--delete--cmd" ]; then
    rm /data/data/com.termux/files/usr/bin/ubuntu
elif [ "$1" == "--help" ]; then
    echo "Usage:"
    echo "  ubuntu                 : Start proot-distro login ubuntu"
    echo "  ubuntu --setup         : Install proot-distro"
    echo "  ubuntu --install       : Install Ubuntu"
    echo "  ubuntu --delete        : Remove Ubuntu"
    echo "  ubuntu --delete--cmd   : Remove the ubuntu command"
    echo "  ubuntu --help          : Show this help message"
else
    echo "Invalid argument. Use 'ubuntu --help' for usage instructions."
fi
