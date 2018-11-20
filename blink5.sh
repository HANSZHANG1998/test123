#!/bin/bash

#This code should blink all four of your LEDs on and then off
#with 1 second of on time and 1 second of off time. It should do this five times.'

#COUNTER=0
counter='0 1 2 3 4' #5 items for 5 times

#while [ $COUNTER -lt 5 ]
for counter in $counter
	do
		gpio write 0 1; #here  1 is the value we set it to
		gpio write 1 1; #here  1 is the value we set it to
		gpio write 2 1; #here  1 is the value we set it to
		gpio write 3 1; #here  1 is the value we set it to

		sleep 1s; #wait 1 second		
		
		gpio write 0 0; #here  0 is the value we set it to
		gpio write 1 0; #here  0 is the value we set it to
		gpio write 2 0; #here  0 is the value we set it to
		gpio write 3 0; #here  0 is the value we set it to
		
		sleep 1s; #wait 1 second				
		
		echo blinking;
	done