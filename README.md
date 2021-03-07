# Daily Bing Wallpaper
Enlighten your mood by changing your wallaper automatically. A simple shell script that downloads the bing wallpaper set your daily wallpaper. 

## Instruction

### MacOS

- Install `jq` & `wget`. You can use Homebrew `brew install jq` & `brew install wget`
- Run the script once to set download permanent picture. Mac looses file pointer and will not change picture accordingly if you skip this.
- Run the script by doing `./main.sh` in your terminal.
- Change wallpaper setting to use Picture folder and select `bing-wallpapers/permanent.jpeg` picture. set Change Picture: Every 1 minute. **Make sure to check Change Picture box.**
- Give crontab [full file access](https://blog.bejarano.io/fixing-cron-jobs-in-mojave/). **Be careful and never to let other run cronjob**
- `git clone` this repo 
- Add crontab as the following
```
crontab -e

// ADD the following line. It runs script every hour. ( redudant to run every hour but helps if computer is sleeping)
0 */1 * * *  YOUR_SCRIPT_main_sh_FULL_PATH >> /tmp/cron.out 2>&1
```

### Changing Number of Pictures to Save
- Go to main.sh
- Edit the variable `NUM_OF_PICS`

### TODO

- Break into functions
- Shell cli options
