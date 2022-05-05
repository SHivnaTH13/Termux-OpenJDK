#!/data/data/com.termux/files/usr/bin/bash

# Setting up installation

if [ ! -f $PREFIX/bin/wget ]
then
    apt update && apt upgrade -y && apt install wget -y
fi

#Checking for existing Java installation

if [ -f $PREFIX/bin/javac ]
then
    echo -e "\e[32mJava is already installed!"
    echo
    exit
else
    # Remove dx and ecj if already installed

    if [ -f $PREFIX/bin/dx ]
    then
        apt-get remove dx -y
    fi
    if [ -f $PREFIX/bin/ecj ]
    then
        apt-get remove ecj -y
    fi

    # Download package openjdk-8-jdk

    wget https://github.com/SHivnaTH13/Termux-OpenJDK/releases/download/v8-331/openjdk-8-jdk_8u331_all.deb --show-progress -q

    # Install package openjdk-8-jdk

    dpkg -i openjdk-8-jdk_8u331_all.deb

    # Remove package openjdk-8-jdk

    rm openjdk-8-jdk_8u331_all.deb
fi
