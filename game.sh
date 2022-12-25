#!/bin/bash

echo "Enter your class type here:
1 - Boss
2 - Hero
3 - Guest"
read class

case $class in
	1)
		type="Boss"
		HP=100
		attack=10
		;;
	2)
		type="Hero"
		HP=80
		attack=7
		;;
	3)
		type="Guest"
		HP=50
		attack=5
		;;
esac

echo " "
echo "You have chosen $type class,  your HP is $HP and your attacking point is $attack. Go ahead...."
echo " "


echo " Welcome in the GAME...."
echo "Do you like to play (y/n): "
read game

if [[ $game == "y" || $game == "yes" ]]; then
echo "Let's goooooo...."
else
	echo " Leave right now!!!!"
	exit 1
fi


#***** NOTE:-   here "exit 1" means it exit this if these condition run, Here if the "else" condition run then "exit 1" will run.... :) ****

echo " "
echo "Entering the game --/__"
echo " "
sleep 1

#First is beast's turn:

beast=$(( $RANDOM % 2 ))

echo "Hey! Beast is completely ready for the fight. Be ready ... Choose your option from 0-1 (0/1) :"
read guest

sleep 1

#Contionals time:

if [[ $beast == $guest ]]; then
	echo "Yeah! YOU WIN!!!!"
else
	echo "Ooh! YOU LOSE THE GAME!!!!"
	exit 1
fi

echo " "

#Next level:


king=$(( $RANDOM % 10 ))

echo "Now you are in LEVEL-2, Now you have to fight with the KING .~!~. : Choose your number from 0-9 (0-9):"
read  guest

sleep 1

#here, I am using the keyword "wave444" as a hacking trick or key trick****

if [[ $king == $guest || $guest == "wave444" ]]; then
	echo "Awesome... YOU CRACK THIS LEVEL BRAVE FELLOW :) "
else
	echo "Sorry!! YOU DIED :( "
fi


echo " "
echo " "
echo "                     - Designed & Created by WAVE444"
