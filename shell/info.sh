#!/bin/bash

echo "Starting script at $(date)"

echo "Runnig program $0 with $# arguments with pid $$"

for file in "$@"; do
	grep foobar "$file" > /dev/null 2> /dev/null

	if [[ "$?" -ne 0 ]]; then
		echo "File $file does not have any foobar"
		echo "Adding foobar..."
		echo "# foobar" >> "$file"
	fi
done



