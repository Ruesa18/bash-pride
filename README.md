# bash-pride

## What is 'bash-pride'?
The bash-pride project introduces a new command for Linux. It's basically a bash script that allows you to show your pride! 🏳️‍🌈😃

## Installation
In order to install this little command you can just run the `installer.sh` file. 
It will save the executable and needed files under `/usr/local/bin`. It will also create a subfolder in your profile: `~/.config/pride-files`. 
In there you can store configuration files for bash-pride (See [Configuration](#configuration)).

## Configuration
Have a look into `/usr/local/bin/pride-files` to see the available config files and variables for your version.

### definitions.config
This file contains basic definitions like the available colors and their codes for the shell.

### pride.config
Inside the pride.config file you may configure your own flag which will be display on use of the command `pride`.

## Credits
I have been inspired by [this repository](https://github.com/ExperiBass/cli-pride-flags) of [ExperiBass](https://github.com/ExperiBass).
It's a good solution, but I wanted to be able to scale it and also use it as terminal welcome screen (bashrc).
