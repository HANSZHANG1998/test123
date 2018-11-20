#!/bin/bash


#count from 0 to 15 in a loop, calling setbits.sh with each
#argument and then waiting for 1 second after each call.
# If you display 16, what do you get in the bits? YOU GET ALL 0s

counter=0

while [ $counter -le 15 ]
do
	echo $counter
	./setbits.sh $counter
	sleep 2s;	
	(( counter++ ))
	./initMode.sh
done