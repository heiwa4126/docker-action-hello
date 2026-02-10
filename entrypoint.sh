#!/bin/sh

echo "Hello $1"
time=$(date)
if [ -z "$GITHUB_OUTPUT" ]; then
	echo "time=$time"
else
	echo "time=$time" >> "$GITHUB_OUTPUT"
fi
