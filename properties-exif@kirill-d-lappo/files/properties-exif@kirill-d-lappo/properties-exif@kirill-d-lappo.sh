#! /bin/bash

FILENAME="$1"

exiftool "${FILENAME}" | sort | sed 's/:/\n/'  \
  | zenity --list --text=""  \
      --title="File Properties"  \
      --column="Property" --column="Value"  \
      --window-icon=notes  \
      --width=700  \
      --height=600  \
      --hide-header
