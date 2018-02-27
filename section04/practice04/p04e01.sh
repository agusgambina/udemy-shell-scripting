#!/bin/bash

function file_count() {
  local COUNT=$(ls -p1 | grep -v '\/$' | wc -l)
  echo "$COUNT"
}
file_count
