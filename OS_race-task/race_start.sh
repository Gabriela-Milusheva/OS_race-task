#!/bin/bash                                                                       

#Overwriting (in this case "cleaning") the numbers_race file
echo "Start cleaning numbers_race file..."
> numbers_race
echo "File is clean!"

echo -e "\n...Start the two race programs at the same time to see the race"
#Running the race.sh script in the background (&)
sh race.sh &
#Running the race.sh script in the foreground
sh race.sh

#Wait for 3 seconds before continuing
sleep 3s

echo "Stop the two race programs at the same time to see the race"

#Exit the script with a status of 0, indicating success
exit 0