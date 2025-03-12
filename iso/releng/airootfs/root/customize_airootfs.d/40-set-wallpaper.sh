#!/bin/bash

# Update dconf database
dconf update

# Make sure wallpaper is readable by all users
chmod 644 /usr/share/wallpapers/GojOS_Linux_Default_Wallpaper.png

# Create a script that runs for new users to set default wallpaper
cat > /etc/skel/.config/autostart/set-default-wallpaper.desktop << 'AUTOSTART'
[Desktop Entry]
Type=Application
Name=Set Default Wallpaper
Exec=gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/wallpapers/GojOS_Linux_Default_Wallpaper.png'
NoDisplay=true
X-GNOME-Autostart-enabled=true
AUTOSTART

# Make it executable
chmod +x /etc/skel/.config/autostart/set-default-wallpaper.desktop

# Ensure the directory exists
mkdir -p /etc/skel/.config/cinnamon-session/saved-session/

# Done
exit 0
