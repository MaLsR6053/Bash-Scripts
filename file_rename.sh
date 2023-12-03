#!/bin/bash
#
echo "Enter the directory path with files to rename: "
read source_directory

echo "Enter the file extension to rename (e.g., txt): "
read file_extension

prefix="new_file"
counter=1

files=("$source_directory"/*.$file_extension)

for file in "${files[@]}"; do
	new_name="${prefix}_${counter}.$file_extension"
	mv "$file" "$source_directory/$new_name"
	((counter++))
done

echo "Files renamed successfully."
