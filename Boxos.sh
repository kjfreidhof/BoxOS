#!/bin/sh

# Author = kjfreidhof

# Created = /3/21/23

# script = Boxos.sh

#License = GPL3

# about = own personal script for my window manager and linux distros slash bsd distro that i use this script is for me and me only
# but others can use it as well if you want it is Free software and licensed under the GPL3 license 

# my packages being installed by the opreating systems i use 
bsd="sudo pkg install bspwm polybar sxhkd nitrogen picom terminator"
pkg1="sudo pkg install firefox flameshot"
arch="sudo pacman -S bspwm terminator polybar sxhkd nitrogen picom -y"
pkg2="sudo pacman -S firefox flameshot dmenu obs-studio kdenlive pavucontrol vlc -y"
fed="sudo dnf install bspwm polybar sxhkd nitrogen picom terminator -y"
pkg3="sudo dnf install firefox flameshot dmenu obs-studio kdenlive pavucontrol vlc -y"
Deb="sudo apt install bspwm polybar sxhkd nitrogen picom terminator -y"
pkg4="sudo apt install firefox flameshot dmenu obs-studio kdenlive pavucontrol vlc -y"

# Asks user what are you using 
# and based on what they are using it will install the packages 
# based on the opreating system they choose so if they choose arch it will install for arch etc.
echo "What are you using?"
echo "1, Freebsd"
echo "2, Arch"
echo "3, Fedora"
echo "4, Ubuntu/Debian"

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
		$deb
		sleep $i 
		$pkg4
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





