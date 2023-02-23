# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %I:%M %p")

# Get the Linux version but remove the "-1-ARCH" part
linux_version=$(uname -r | cut -d '-' -f1)

#memory 
memory_used=$(free | awk '/Mem:/ {print int(($7 / $2)*100)}')

# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(cat /sys/class/power_supply/BAT0/capacity)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|🔋
echo mem: $memory_used% . bat: $battery_status%  . $date_formatted 
#echo $battery_status % 
