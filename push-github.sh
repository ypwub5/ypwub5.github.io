#!/bin/bash

# a simple script to upload the source to github
# this will only push the latest commit

# Create an orphan branch named 'master' with only the current HEAD commit
git checkout --orphan master

# Get the current date and time in the format YYYYMMDDHHMM
formatted_date=$(date +"%Y%m%d%H%M")

# Commit changes with a custom message including the formatted date
git commit -m "push $formatted_date"

# Force push the 'master' branch to the remote GitHub repository
git push github master --force

# goback to main branch
git checkout main

# Delete the local 'master' branch
git branch -D master