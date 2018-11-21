#!/usr/bin/env bash

# Bash script for the user to guess the number of files in a given directory


#flag of success
success=1

#Current number of files
files=$(ls -l  | grep -v "^d" | wc -l) # not counting directories
let files=$files-1 # remove total toutout

function guess() {

  echo "Please guess the number of files:"
  read numfiles

  if [[ $numfiles -eq $files ]]; then
    echo "Your guess is correct"
    let success=0
  elif [[ $numfiles -gt $files ]]; then
    echo " No, it's lower"
  else
    echo "No, it's higher"
  fi
}

while [[ $success -ne 0 ]]; do
  guess
done

