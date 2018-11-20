#!/bin/bash

#Call the bits (or LED’s) from left to right bit1, bit2, bit3, bit4 and the number n. 
#Then
# Bit1 is on iff (n)& 1
# Bit2 is on iff (n>>1) & 1
# Bit3 is on iff (n>>2) & 1
# Bit4 is on iff (n >> 3) & 1 


# $1 is the argument passed by user (first argument)
#only checks once wihtout a loop, so need a loop to keep it going
#save input from argument in a variable

var=$1
counter=0;

while [ $counter -lt 4 ]
do
	if  (($var & 1))
	then
		 gpio write 0 1; #turn on led light 0 (bit 1)
		 #echo var first if $var
	fi
	
	if (($var>>1 & 1))
	then
		#do something
		 gpio write 1 1; #turn on led light 0 (bit 1)	
		# echo var second if $var		 
		
	fi
		 
	if (($var>>2 & 1))
	then
		#do something	
		 gpio write 2 1; #turn on led light 0 (bit 1)	
	#	 echo var third if $var		 
	fi
		 
	if (($var>>3 & 1))
	then
		#do something	
		 gpio write 3 1; #turn on led light 0 (bit 1)	
	#	 echo var fourth if $var		 
		
	fi #close if statement
	
	(( counter++ ))
done #close loop