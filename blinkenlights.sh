#Write code to randomly assign a bit pattern to your array of LED’s
#changing every 0.25 of a second. Note: the Bash variable $RANDOM
#(note: upper case) is a random number. 


while true
do
	counter=$RANDOM
	echo random number is $counter
	./setbits.sh $counter
	sleep 0.25s
	./initMode.sh
done