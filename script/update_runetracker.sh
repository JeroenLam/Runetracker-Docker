#!/bin/bash

# Check if a command line parameter is provided
if [ "$#" -eq 0 ]; then
  user="Zezima"
else
  user="$1"
fi

# Construct and run the curl command
curl -X POST -d "user=$user" https://runetracker.org/updateUserJS.php

