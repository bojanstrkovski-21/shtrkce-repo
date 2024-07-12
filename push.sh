#!/usr/bin/env bash

# Created by Bojan Shtrkovski 26.05.2024


# Update/Create the databases
cd x86_64
sh update_repo.sh
cd ..

# Configuration: Set your GitLab username here
# GITLAB_USERNAME="bojanstrkovski-21"
# REPO_URL="https://gitlab.com/bojanstrkovski-21/shtrkce_repo_xl.git"

# Below command will backup everything inside 
#the project folder
git add --all .

echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

#git push -u origin main
#git push -u origin main --force

# Prompt for the password
# echo "Enter your GitLab password:"
# read -s GITLAB_PASSWORD

# Push changes to the repository
# Using expect to handle the username and password input automatically
############################ IMPORTATNT !!! ##########################
#
#  Install "expect" package for this script to work 
# expect <<EOF
# spawn git push origin main
# expect "Username for 'https://gitlab.com':"
# send "$GITLAB_USERNAME\r"
# expect "Password for 'https://$GITLAB_USERNAME@gitlab.com':"
# send "$GITLAB_PASSWORD\r"
# expect eof
# EOF


git push

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
