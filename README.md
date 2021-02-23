# Daily Bing Wallpaper
Enlighten your mood by changing your wallaper automatically. A simple shell script that downloads the bing wallpaper set your daily wallpaper. 

## Instruction

### MacOS

- Install `jq` & `wget`. You can use Homebrew `brew install jq` & `brew install wget`
- Change wallpaper setting to use Picture folder and set Change Picture: When waking up from sleep
- - Give crontab [full file access](https://blog.bejarano.io/fixing-cron-jobs-in-mojave/). **Be careful and never to let other run cronjob**
- `git clone` this repo 
- Add crontab as the following
```
crontab -e

// ADD the following line
* 0 * * *  YOUR_SCRIPT_main_sh_FULL_PATH >> /tmp/cron.out 2>&1
```

### TODO
- size cli option
- error handling
- number of history images
