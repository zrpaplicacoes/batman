# Batman - CLI Battery Manager

## Introduction

**Batman** is a simple shell plugin which adds in the Right Prompt icons showing battery status. 

It's focused on programmers who spend lots of time programming in notebooks. :sunglasses:

## Installation

- Clone the repo

- Run the install by typing <code>./install.sh</code>

**or**

<code> git clone git@github.com:zrpaplicacoes/batman.git | sh install.sh </code>

***(assuming ssh configured)***

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

- [ZRP blog](http://www.zrp.com.br/blog) - PT-BR only :blush:
