#!/bin/bash

display_name() {
  echo "$1":
}

file_count() {
  for DIRECTORY in "/etc/" "/var/" "/usr/bin/"
  do
    local COUNT=$(ls -p1 "$DIRECTORY" | grep -v '\/$' | wc -l)
      display_name "$DIRECTORY"  
      echo "$COUNT"
  done
}

file_count
