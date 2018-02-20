#!/bin/bash

# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

echo $1

if [ -f $1 ] 
then
  echo "It is a regular file"
  ls -l $1
elif [ -d $1 ] 
then
  echo "It is a directory"
  ls -l $1
elif [ -e $1 ]
then
  echo "file exist"
  ls -l $1
else
  echo "File does not exist"
fi