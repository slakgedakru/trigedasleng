#!/bin/bash

# Read the JSON array from the input file
input_file="00_dictionary.json"

# Calculate the length of the array
array_length=$(jq 'length' "$input_file")

# Iterate through the array and create individual files
for i in $(seq 0 $((array_length - 1))); do
  # Extract the object and its word property
  object=$(jq ".[$i]" "$input_file")
  word=$(jq -r ".[$i].word" "$input_file")

  # Save the object into a file with the word property as its name
  echo "$object" > "$word.json"
done

