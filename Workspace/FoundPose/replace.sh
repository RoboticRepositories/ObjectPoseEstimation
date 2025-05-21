#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <search_string> <replace_string> <filename>"
  exit 1
fi

search=$1
replace=$2
file=$3

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

# Use sed for in-place replacement (works on GNU sed)
sed -i "s/${search//\//\\/}/${replace//\//\\/}/g" "$file"

echo "All occurrences of '$search' replaced with '$replace' in '$file'."
