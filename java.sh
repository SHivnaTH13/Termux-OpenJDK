#!/data/data/com.termux/files/usr/bin/bash

apt update && apt install wget -y

#Checking for existing Java installation

if [ -e $PREFIX/bin/javac ]
then
  echo -e "\e[32mJava is already installed!"
  echo
  exit
else
  if [ -e $PREFIX/bin/dx ]
  then
    apt remove dx -y
  fi

#Actual installation

  wget https://github.com/SHivnaTH13/Termux-OpenJDK/releases/download/v8-311/openjdk-8-jdk_8u311_all.deb --show-progress -q
  dpkg -i openjdk-8-jdk_8u311_all.deb
  rm openjdk-8-jdk_8u311_all.deb
fi
