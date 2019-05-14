# !/bin/bash

# Program to list out all bash scripts and a short description
# Assumes 3rd line of every shell script is a short description
# DESCRIPTION WILL BE WRONG IF THE 3RD LINE IS NOT A COMMENT DESCRIBING THE PROGRAM

for script in ~/bin/*.sh
do
    echo "$script"
    echo "$(sed "3p;d" $script)"
    echo " "
done
