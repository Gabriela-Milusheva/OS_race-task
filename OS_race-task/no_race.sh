#!/bin/bash 

echo "--> Start no_race.sh"

#Check if the file numbers_no_race exists, if not- create it and write 1 to it
echo "Create the numbers_no_race file"                                          
if test ! -f numbers_no_race
then
    echo 1 > numbers_no_race
fi

echo "Lock numbers_no_race and do not let interruption"
#Attempts to lock the file to prevent other processes from modifying it
#If the creation of the hardlink is successful, the script procceds to execute the "for" loop
if ln numbers_no_race numbers_no_race.lock
then                   
    echo "Repeat 100 times - read and increase last number"
    for i in $(seq 1 100);
    do
        # Read and assign last line number to the variable LASTNUM
        LASTNUM=$(tail -1 numbers_no_race)
        #Increment the value of LASTNUM by 1
        LASTNUM=$((LASTNUM + 1))

        #The new value of LASTNUM is added to the end of the "numbers_race" file
        echo $LASTNUM >> numbers_no_race
    done

    echo "Unlock numbers_no_race"
    #Remove the hardlink
    rm numbers_no_race.lock
fi
echo "--> Finish no_race.sh"