#!/bin/bash


MESSAGE="$(git log --format=%B -n 1)"

if [[ $MESSAGE =~ '[MAJOR]' ]]; then
  echo "It's there!"
fi
