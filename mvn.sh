#!/bin/bash


MESSAGE="$(git log --format=%B -n 1)"

if [[ $MESSAGE =~ '[MAJOR]' ]]; then
  echo "It's there!"
elif [[ $MESSAGE =~ '[MINOR]' ]]; then
 echo "Its minor"
else
	echo "none"
fi
