#!/bin/bash
# This is a hacky script to separate the lexical class (stored as part of the "translation" property) from the original monolith files into its own property so that the dictionary is more malleable. This script was only ever intended to be run once, so it's not fast or well written.

# Set the path to the folder containing the JSON files
path_to_folder=../dictionary

# Separate lexical class into its own property
for file in $path_to_folder/*.json
do
    # Extract first word from "translation" and add it to a new "class" property
    jq '.class = (.translation | split(":")[0] | gsub(" "; ""))' "$file" > "$file"'.tmp'

    # Replace the original file with the updated version
    mv $file.tmp $file
done


# Remove the class that we removed in the previous loop from the initial property
for file in $path_to_folder/*.json
do
    # Use jq to remove the first word in the "translation" property
    # delimited by a ":"
    jq '.translation |= (split(":")[1:] | join(":") | sub("^ +";""))' "$file" > "$file"'.tmp'

    # Replace the original file with the updated version
    mv $file.tmp $file
done
