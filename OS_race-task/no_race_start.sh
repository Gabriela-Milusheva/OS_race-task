#!/bin/bash                                                                       

#Overwriting (in this case "cleaning") the numbers_race file
echo "Start cleaning numbers_no_race file..."
> numbers_no_race
echo "File is clean!"

echo "Start the two no_race programs at the same time"
#Running the race.sh script in the background (&)
sh no_race.sh &
#Running the race.sh script in the foreground
sh no_race.sh

#Wait for 3 seconds before continuing
sleep 3s

echo "Stop the two no_race programs at the same time"

#Exit the script with a status of 0, indicating success
exit 0