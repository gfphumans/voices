#!/bin/bash
for file in * 
do
	name="${file%.*}"
	if [ "$name" -gt "20" ]; then
		val=$((name / 500 + 1))
		new="$val/$file"
		mv $file $new
  fi
done