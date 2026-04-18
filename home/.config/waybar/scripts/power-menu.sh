#!/usr/bin/env bash

choice=$(printf "Shutdown\nReboot\nSleep\nLogout" | rofi -dmenu -i -p "Power" -theme ~/.config/rofi/amber-terminal.rasi)

case "$choice" in
Shutdown)
  systemctl poweroff
  ;;
Reboot)
  systemctl reboot
  ;;
Sleep)
  systemctl suspend
  ;;
Logout)
  hyprctl dispatch exit
  ;;
esac
