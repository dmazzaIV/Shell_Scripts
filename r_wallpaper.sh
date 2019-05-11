# !/bin/bash

# Program to change the computers wallpaper to a random .jpg from a given directory
# Can set this up with cron to change daily, weekly, etc
# Keeps you're boring life interesting

# Select a random wallpaper from ~/Pictures/wallpapers
wallpaper=$("ls" ~/Pictures/wallpapers | sort -R | tail -1)

# Set the wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///home/dan/Pictures/wallpapers/${wallpaper}
