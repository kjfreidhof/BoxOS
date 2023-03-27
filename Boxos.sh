#!/bin/sh

# Author = kjfreidhof

# Created = /3/21/23

# script = Boxos.sh

#License = GPL3

# about = own personal script for my window manager and linux distros slash bsd distro that i use this script is for me and me only
# but others can use it as well if you want it is Free software and licensed under the GPL3 license 

# my packages being installed by the opreating systems i use 
bsd="sudo pkg install bspwm polybar sxhkd nitrogen picom terminator lxappearance"
pkg1="sudo pkg install firefox flameshot"
arch="sudo pacman -S bspwm terminator polybar sxhkd nitrogen picom lxappearance -y"
key="sudo pacman -S archlinux-keyring -y"
virt="sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat -y"
table="sudo pacman -S ebtables iptables"
pkg2="sudo pacman -S firefox flameshot dmenu obs-studio kdenlive pavucontrol vlc -y"
fed="sudo dnf install bspwm polybar sxhkd nitrogen picom terminator lxappearance -y"
pkg3="sudo dnf install firefox flameshot dmenu obs-studio kdenlive pavucontrol vlc -y"
Deb="sudo apt install bspwm polybar sxhkd nitrogen picom terminator lxappearance -y"
pkg4="sudo apt install firefox-esr flameshot suckless-tools obs-studio kdenlive pavucontrol vlc -y"
sus="sudo zypper install bspwm polybar sxhkd nitrogen picom terminator lxappearance kitty -y"
pkg5="sudo zypper install firefox flameshot suckless-tools obs-studio kdenlive pavucontrol vlc -y"
# Asks user what are you using 
# and based on what they are using it will install the packages 
# based on the opreating system they choose so if they choose arch it will install for arch etc.
echo "What are you using?"
echo "1, Freebsd"
echo "2, Arch"
echo "3, Fedora"
echo "4, Ubuntu/Debian"
echo "5, Opensuse"

read CHOICE

if [ "$CHOICE" = 1 ]; then
	for i in 5
	do
		sleep $i
		$bsd
		sleep $i
		$pkg1
		continue 
	
	done	
	
elif [ "$CHOICE" = 2 ]; then
	for i in 5
	do
		sleep $i 
		$arch
	        sleep $i
		$pkg2
		$key
		$virt
		$table	
		continue
	       	

	done


elif [ "$CHOICE" = 3 ]; then
	for i in 5
	do
		sleep $i
		$fed
		sleep $i
		$pkg3
		continue 

	done


elif [ "$CHOICE" = 4 ]; then
	for i in 5 
	do
		sleep $i
		$Deb
		sleep $i 
		$pkg4
		continue 

	done


elif [ "$CHOICE" = 5 ]; then
	while :
	do
		sleep 5
		$sus
		sleep 5
		$pkg5
		continue

	done



else
	echo "Wrong button exit"
	sleep 5
	exit


fi

# copies everything to the ~/.config/ directory
cp * ~/.config/
exit





