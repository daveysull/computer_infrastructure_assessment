#!/bin/bash

# Define the directory to save the weather data
data_dir="data/weather"

# Ensure the directory exists
mkdir -p "$data_dir"

# Get the current timestamp in the format YYYYmmdd_HHMMSS
timestamp=$(date +"%Y%m%d_%H%M%S")

# Define the URL for the weather data
weather_url="https://prodapi.metweb.ie/observations/athenry/today"

# Define the output file name with the timestamp
output_file="$data_dir/${timestamp}.json"

# Download the weather data and save it to the timestamped file
wget -O "$output_file" "$weather_url"

# Print a success message
echo "Weather data saved to $output_file"
