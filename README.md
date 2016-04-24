![Batman Gif](http://orig15.deviantart.net/67eb/f/2012/205/e/4/pikachu___batman_by_mnrart-d58f68d.gif)

# Batman - CLI Battery Manager


## Introduction

**Batman** is a simple shell plugin which adds in the Right Prompt icons showing battery status. 

It's focused on programmers who spend lots of time programming in notebooks. :sunglasses:

Look at those arrows :scream: :

![Batman Demo](http://labs.zrp.com.br/wp-content/uploads/2016/04/shell-300x45.png "Demo of batman icons")

## Installation

- Clone the repo

- Enter in the folder

- Run the install

**or**

<code> git clone https://github.com/zrpaplicacoes/batman.git </code>

<code> cd batman </code>

<code> ./install.sh </code>


## Configuration

In order to change battery icon (full list of available unicode icons [here](http://unicode-table.com/en/#combining-diacritical-marks-extended), 
default full charge color, default almost full charge color, default lack of battery color and default alert color just change global variables
***before*** source call in your .bashrc or .zshrc.

### Example:

```
BATTERY_SYMBOL='\u22d9'
DANGER_COLOR='%{\e[1;31m%}'
ALERT_COLOR='%{\e[1;33m%}'
SAFE_COLOR='%{\e[1;32m%}'
FULL_COLOR='%{\e[1;35m%}'

source '~/bin/batman/plugin.sh'
```

## More info

- [ZRP blog](http://www.zrp.com.br/blog/2016/04/21/batman-cli-battery-manager/) - PT-BR only :blush:
