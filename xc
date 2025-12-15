#!/usr/bin/env bash

# Prefer workspace over project
if [ -e *.xcworkspace ]; then
    open *.xcworkspace
    exit
fi

if [ -e *.xcodeproj ]; then
    open *.xcodeproj
    exit
fi

echo "Did not find .xcworkspace or .xcodeproj in $(pwd)"
exit 1
