# Termux-OpenJDK
This script will install Java in Termux without using proot.
<br>This is the stable version of OpenJDK-8 for Android.
<br>Also this is architecture independent, that means this works on all Android based Devices.

To install OpenJDK-8 in Termux clone this repository and execute bash script.

- Open Terminal
- Type `git clone https://github.com/SHivnaTH13/Termux-OpenJDK`
- `bash java.sh`

This will successfully install Java in Termux.

This release includes following commands
- java
- javac
- javap
- jar
- idlj
- extcheck
- javadoc

Java command is based on Android SDK's dx tool.
<br>If java program have separate file for method class then

Syntax for java command is :
<br>`java MainClass MethodClass`
