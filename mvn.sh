#!/bin/bash


MESSAGE="$(git log --format=%B -n 1)"

if [[ $MESSAGE =~ '[MAJOR]' ]]; then
  mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.nextMajorVersion}.0.0
elif [[ $MESSAGE =~ '[MINOR]' ]]; then
  mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.nextMinorVersion}.0
else
	  mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}
fi

git commmit -am "Incrementing pom.xml version"
git push -u origin master
