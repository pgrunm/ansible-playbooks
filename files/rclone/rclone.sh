#!/bin/bash -l
# rclone sync ~/Syncthing secret:Syncthing/ --dump filters --exclude-from ~/rclone/exclude.txt -v -P
# rclone sync ~/Syncthing secret:Syncthing/ --exclude-from ~/rclone/exclude.txt -v -P --dry-run --dump filters


# rclone sync ~/Syncthing secret:Syncthing/ --exclude "*config/**" --delete-excluded -n
# rclone sync ~/Syncthing secret:Syncthing/ --exclude-from ~/rclone/exclude.txt --delete-excluded -n

# Test filters
# rclone ls ~/Syncthing --exclude "*config/**" | head

# With backup dir 
# Time backup
# rclone sync ~/Syncthing secret:Syncthing/ --exclude-from ~/rclone/exclude.txt --delete-excluded --backup-dir secret:backup/ --suffix `date '+%Y-%m-%d-%H%M%S'` -n

# Backup with .bk ending
#echo "Starting with Magenta Cloud..."
rclone sync ~/Syncthing secret:Syncthing/ --exclude-from ~/rclone-install/exclude.txt --delete-excluded --backup-dir secret:backup/ --suffix ".bk" 
#echo "Finished sync to Magenta Cloud..."

#echo "Starting with Google Drive..."
rclone sync ~/Syncthing gdrive-secret:Syncthing/ --exclude-from ~/rclone-install/exclude.txt --delete-excluded --backup-dir gdrive-secret:backup/ --suffix ".bk" 
#echo "Finished Google Drive..."
