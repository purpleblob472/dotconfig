image=$(ls ~/Pictures/Miku | rofi -dmenu)
swww img "/home/jon/Pictures/Miku/$image"
wal -i "/home/jon/Pictures/Miku/$image"
pywal-discord -p /home/jon/.config/vesktop/themes
pywalfox update
