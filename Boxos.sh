#!/bin/sh
bsd="sudo pkg install bspwm polybar sxhkd nitrogen picom terminator"
arch="sudo pacman -S bspwm terminator polybar sxhkd nitrogen picom -y"
fed="sudo dnf install bspwm polybar sxhkd nitrogen picom terminator -y"
Deb="sudo apt install bspwm polybar sxhkd nitrogen picom terminator -y"
echo "What are you using?"
echo "1, Freebsd"
echo "2, Arch"
echo "3, Fedora"
echo "4, Ubuntu/Debian"

read -rp CHOICE

if [ "$CHOICE" = 1 ]; then
	for i in 5
	do
		sleep $i
		$bsd
		continue 
	
	done	
	
elif [ "$CHOICE" = 2 ]; then
	for i in 5
	do
		sleep $i 
		$arch 
		continue 

	done


elif [ "$CHOICE" = 3 ]; then
	for i in 5
	do
		sleep $i
		$fed
		continue 

	done


elif [ "$CHOICE" = 4 ]; then
	for i in 5 
	do
		sleep $i
		$deb
		continue 

	done


else
	echo "Wrong button exit"
	sleep 5
	exit


fi

cp * ~/.config/
exit





