#!/bin/bash
#cars.sh
#Lauren Szlosek
while true
do
echo -n "Type 1 to enter new car.
Type 2 to display the list of cars.
Type 3 to quit and exit the program.
"; read menu
	case "$menu" in
		"1")
		echo -n "Enter Year: "; read year
		echo -n "Enter Make: "; read make
		echo -n "Enter Model: "; read model
		echo "$year:$make:$model" >> My_old_cars.txt
		;;
		"2") 
		sort My_old_cars.txt
		;;
		"3")
		echo "Goodbye"
		break
		;;
		*) echo "Sorry, that is not a menu option.";;
	esac
done
