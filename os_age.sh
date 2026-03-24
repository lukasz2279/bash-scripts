#!/bin/bash
# Calculate and display the age of the Linux installation in days

# Get the birth time of the root filesystem in seconds since epoch
birth_time=$(stat / --format=%W)

# Get current time in seconds since epoch
current_time=$(date +%s)

# Calculate the difference in seconds
age_seconds=$((current_time - birth_time))

# Convert seconds to days (86400 seconds in a day)
age_days=$((age_seconds / 86400))

# Output the result
echo "Arch is $age_days days old"
