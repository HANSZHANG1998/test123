#!/bin/bash

#implement a Cylon warrior eye using your four bit display
#One LED should be powered, and it should move from left to right and back again. 
#Each position should be held on for 0.25 seconds. 
#Note:the sleep command in Raspian works for fractional seconds. 
#Be careful at the ends of the sequence not to wait too late.

counter=1

while true
do
	
	#for counter in $counter
#	do
		echo $counter		
		./setbits.sh $counter
		sleep 0.25s
		./initMode.sh

		if [ $counter -eq 8 ]
		then
			#(( counter = counter /2 ))
			
			for (( i=$counter; i>1; i = i/2 ));
			do
				(( counter = counter /2 ))
				echo $counter	
				echo i is $i
				./setbits.sh $counter
				sleep 0.25s
				./initMode.sh	
				
				if [ $counter -eq 0 ]
				then
					break
				fi				

			done
		fi
		
	#	(( counter ++ ))
		#echo THE LAST VAL OF COUNTER $counter
		if [ $counter -eq  1 ]
		then
			(( counter ++ ))
			#echo COUNTERERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR $counter
			for (( j=$counter; j<8; j = j *2 ));
			do
				echo fromm $counter
				#echo j is $j				
				./setbits.sh $counter
				sleep 0.25s
				./initMode.sh		
				(( counter = (counter) * 2 ))								
			
			done
		fi
		
	#done
	
done
