#!/bin/bash

# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Please enter the file or directory name: " NAME

echo $NAME

if [ -f $NAME ] 
then
  echo "It is a regular file"
  ls -l $NAME
elif [ -d $NAME ] 
then
  echo "It is a directory"
  ls -l $NAME
elif [ -e $NAME ]
then
  echo "file exist"
  ls -l $NAME
else
  echo "File does not exist"
fi