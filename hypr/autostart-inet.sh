#!/bin/sh
nm-online -q --timeout=30

hyprctl dispatch workspace 5
hyprctl dispatch exec '[workspace 5] google-chrome-stable --profile-directory="Profile 1"'

sleep 5s

hyprctl dispatch workspace 2
hyprctl dispatch exec '[workspace 2] ghostty'

hyprctl dispatch workspace 1
hyprctl dispatch exec '[workspace 1] google-chrome-stable --profile-directory="Default"'
