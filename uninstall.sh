#!/data/data/com.termux/files/usr/bin/bash

#Uninstall existing Java version

if [ -e $PREFIX/bin/javac ]
then
	echo -e "\e[32mJava is being uninstall..."
	echo
	dpkg --remove openjdk-8-jdk
	exit
else
	echo -e "\e[32mJava not installed"
	echo
	exit
fi
