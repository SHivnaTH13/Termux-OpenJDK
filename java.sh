#!/data/data/com.termux/files/usr/bin/bash

#Checking for existing Java installation

if [ -e $PREFIX/bin/javac ]
then
	echo -e "\e[32mJava is already installed!"
	echo
	exit
else

#Actual installation

	wget https://github.com/SHivnaTH13/Termux-OpenJDK/releases/download/v8-232/openjdk-8-jdk_8u232.deb --show-progress -q
	dpkg -i openjdk-8-jdk_8u232.deb
	rm openjdk-8-jdk_8u232.deb
fi
