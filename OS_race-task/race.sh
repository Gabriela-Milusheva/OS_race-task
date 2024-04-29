#!/bin/bash 

echo "--> Start race.sh" 

#Check if the file numbers_race exists, if not- create it and write 1 to it
if test ! -f numbers_race
then
    echo "Create the numbers_race file"  
    echo 1 > numbers_race
fi

echo "Repeat 100 times - read and increase last number"
for i in $(seq 1 100);
do
    # Read and assign last line number to the variable LASTNUM
    LASTNUM=$(tail -1 numbers_race)
    #Increment the value of LASTNUM by 1
    LASTNUM=$((LASTNUM + 1))

    #The new value of LASTNUM is added to the end of the "numbers_race" file
    echo $LASTNUM >> numbers_race
done
echo "--> Finish race.sh"