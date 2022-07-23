# !/bin/bash
# -*- ENCODING: UTF-8 -*-


sudo xbps-install -Suy # update
sudo xbps-remove -Ooy # remove orphans AND xbps cache

echo $(du -sh ~/.cache)
rm -rf ~/.cache/* # remove home cache

find ~ -type d -empty
find ~ -type d -empty -delete # remove empty folders

notify-send "Hey!, this is done" || echo "Hey!, this is done"