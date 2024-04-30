#!/bin/bash

# prompt the user to enter a github url
read -p "please provid the github url: " github_url

#clone the reposistory
git clone $github_url temp_repo

#prompt the user to enter the filename
read -p "please enter the name of the file you want to add: "filename

#create the file and add content
echo "this is a new file." > $filename

#add the fie and commit it
git add .
git commit -m "added $filename"

#push the changes to github
git push origin main

#display success message
echo "changes pushed sucessfully to $github_url"
