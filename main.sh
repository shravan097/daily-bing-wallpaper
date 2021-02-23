#!/bin/sh
cd ~/Pictures
FILE_NAME='cron_bing_wallpaper.jpeg'
BING_BASE_URL="https://bing.com"
IMAGE_URL=$(curl "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US" | jq -r '.images[0].url')
echo ${BING_BASE_URL}${IMAGE_URL}
wget -O "${FILE_NAME}" "${BING_BASE_URL}${IMAGE_URL}"