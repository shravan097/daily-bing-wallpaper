#!/bin/sh
echo "Daily Bing Wallpaper Cron Running..."
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
cd ~/Pictures
mkdir -p bing-wallpapers
cd bing-wallpapers
NUM_OF_PICS='5'
PERMANENT_FILE_NAME='permanent.jpeg'
BING_BASE_URL="https://bing.com"
RESPONSE_JSON=`curl "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=$NUM_OF_PICS&mkt=en-US"`
if [ ! -f ${PERMANENT_FILE_NAME} ]; then
echo "Setting first photo to be permanent...."
IMAGE_URL=$(echo $RESPONSE_JSON | jq -r ".images[0].url")
wget -O ${PERMANENT_FILE_NAME} "${BING_BASE_URL}${IMAGE_URL}"
fi
for ((i = 0; i <= $NUM_OF_PICS-1; i++))
do
    echo "Starting the download ....${i}"
    IMAGE_URL=$(echo $RESPONSE_JSON | jq -r ".images[$i | tonumber].url")
    echo ${BING_BASE_URL}${IMAGE_URL}
    wget -O "${i}.jpeg" "${BING_BASE_URL}${IMAGE_URL}"
    echo "success"
done

