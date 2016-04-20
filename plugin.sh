#####################################################
# 									VARIABLES 											#
#####################################################

# Default variables
local default_battery_symbol='\u25b6'
local default_danger_color='\033[0;31m'
local default_alert_color='\033[0;33m'
local default_safe_color='\033[0;32m'
local default_full_color='\033[0;35m'

# Script variables
local battery_symbol="${BATTERY_SYMBOL:-$default_battery_symbol}"
local danger_color="${DANGER_COLOR:-$default_danger_color}"
local alert_color="${ALERT_COLOR:-$default_alert_color}"
local safe_color="${SAFE_COLOR:-$default_safe_color}"
local full_color="${full_color:-$default_full_color}"

#####################################################

#####################################################
# 							HELPER FUNCTIONS										#
#####################################################

# Returns one string repetition of battery_symbol according to level
print_battery_icons() {
	local level=$1
  local output=$(printf "${battery_symbol}%.0s" {1..${level}})
	echo "${output// /*}"
}

# Decides which color to use
display_color() {
	if [ "$1" -lt 2 ]; then
		echo $danger_color
	elif [ "$1" -lt 4 ]; then
		echo $alert_color
	elif [ "$1" -lt 5 ]; then
		echo $safe_color
	else
		echo $full_color
	fi
}

# get battery level (0-5) according to acpi
get_level() {
	local battery_percentage=$(acpi | grep -o "[0-9]*%" | grep -o "[0-9]*")
  local battery_step=25
  local level=$(($battery_percentage / $battery_step + 1))

  if [ "$level" -lt 1 ]; then
    eval $level=1
  fi

  echo "$level"
}

# Reset color to default
color_reset() {
	echo "\033[m"
}

# export battery status in RPROMPT
reset_battery_status() {
	export RPROMPT="$(display_color $battery_level)$(print_battery_icons $battery_level)$(color_reset)"
}

# binds the export to recalculate battery level after each command
preexec() {
	reset_battery_status
}
#####################################################


#####################################################
# 								EXECUTION													#
#####################################################
local battery_level=$(get_level)
reset_battery_status
