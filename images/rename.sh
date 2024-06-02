#!/bin/bash

# Directory containing your files
directory=""

# Counter for renaming
counter=1

# Loop through the files and rename them
for file in "$directory"*.jpeg; do
    # Check if file exists
    [ -e "$file" ] || continue
    
    # Construct the new filename
    new_filename="${directory}${counter}.jpeg"
    
    # Rename the file
    mv "$file" "$new_filename"
    
    # Increment the counter
    ((counter++))
done
