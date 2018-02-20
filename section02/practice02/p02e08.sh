#!/bin/bash

# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

for FILE in $@; do
  if [ -f $FILE ]; then
    echo "It is a regular file"
    ls -l $FILE
  elif [ -d $FILE ]; then
    echo "It is a directory"
    ls -l $FILE
  elif [ -e $FILE ]; then
    echo "file exist"
    ls -l $FILE
  else
    echo "File does not exist"
  fi
done