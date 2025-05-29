
#!/usr/bin/env bash

BASE_PATH=/home/lucas/Pictures/Screenshots
OUTPUT_FILENAME="$(date '+%Y-%m-%d_%H:%M:%S')_screenshot.png"
OUTPUT_PATH="${BASE_PATH}/${OUTPUT_FILENAME}"

function take_cropped_screenshot() {
  grim -g "$(slurp)" "${OUTPUT_PATH}"
}

function take_focused_monitor_screenshot() {
  grim -o "$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')" "${OUTPUT_PATH}"
}

function notify() {
    notify-send -i "${OUTPUT_PATH}" "Screenshot taken" "${OUTPUT_FILENAME}"
}

case $1 in

cropped)
  take_cropped_screenshot
  notify
  ;;

fullscreen)
  take_focused_monitor_screenshot
  notify
  ;;

*)
  echo "unknown or no command"
  ;;
esac