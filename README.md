# Daily Bing Wallpaper
Enlighten your mood by changing your wallaper automatically. A simple shell script that downloads the bing wallpaper set your daily wallpaper. 

## Instruction

### MacOS

- Install `jq`. You can use Homebrew `brew install jq` 
- Change wallpaper setting to use Picture folder and set Change Picture: When waking up from sleep
- `git clone` this repo 
- Add crontab as the following
```
crontab -e

// ADD the following line
0 6 * * * YOUR_FULL_PATH_TO_main.sh
```

### TODO
- size cli option
- error handling
- number of history images
