#!/bin/sh


MESSAGE="$(git log --format=%B -n 1)"

if [ $string ?? '[MAJOR]' ]; then
  echo "It's there!"
fi
