# OS_task-race
## Task Description
Практически занимания с операционната система MINIX:
Инсталирайте Minix върху виртуална машина или физическо устройство и решете следната задача:
 ```sh
Write a shell script that produces a file of sequential numbers by reading the last number 
in the file, adding 1 to it, and then appending to the file. Run one instance of the script 
in the background and one in the foreground, each accessing the same file. 
 - How long does it take before a race condition manifests itself? 
 - What is the critical section? 
 - Modify the script to prevent the race.  
   (Hint: use In file file.lock to lock the data file).
 ```
   
## Steps to get the project
1. Clone the repository
 ```sh
git clone https://github.com/Gabriela-Milusheva/OS_race-task
 ```
 ```sh
cd OS_race-task
 ```
3. Create scripts and start the project:
Restart:
```sh
sh start.sh
```
Restart only race task:  
```sh 
sh race_start.sh
 ```
Restart only no race task:   
```sh 
sh no_race_start.sh
```
