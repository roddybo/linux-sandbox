#!/bin/bash

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Get the date for Christmas of the current year
christmas_date=$(date -d "$(date +"%Y")-12-25" +"%Y-%m-%d")

# Calculate the number of days until Christmas
days_until_christmas=$(( ( $(date -d "$christmas_date" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))

# Display the result
echo "Days until Christmas: $days_until_christmas"

