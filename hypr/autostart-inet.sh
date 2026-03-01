#!/bin/sh
nm-online -q --timeout=30

hyprctl dispatch workspace 5
hyprctl dispatch exec '[workspace 5 silent] google-chrome-stable --profile-directory="Profile 1"'

sleep 5s

hyprctl dispatch workspace 4
hyprctl dispatch exec '[workspace 4 silent] discord'

sleep 5s

hyprctl dispatch workspace 3
hyprctl dispatch exec '[workspace 3 silent] code'

hyprctl dispatch workspace 2
hyprctl dispatch exec '[workspace 2 silent] ghostty'

hyprctl dispatch workspace 1
hyprctl dispatch exec '[workspace 1 silent] google-chrome-stable --profile-directory="Default"'
