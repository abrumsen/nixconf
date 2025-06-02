#!/usr/bin/env bash

SELECTION="$(printf " Lock\n󰒲 Suspend\n󰗽 Log out\n󰜉 Reboot\n Reboot to UEFI\n⏻ Shutdown" | fuzzel --dmenu -l 7 -p "Power Menu: ")"

case $SELECTION in
*"Lock")
  swaylock
  ;;
*"Suspend")
  systemctl suspend
  ;;
*"Log out")
  niri msg quit
  ;;
*"Reboot")
  systemctl reboot
  ;;
*"Reboot to UEFI")
  systemctl reboot --firmware-setup
  ;;
*"Shutdown")
  systemctl poweroff
  ;;
esac
