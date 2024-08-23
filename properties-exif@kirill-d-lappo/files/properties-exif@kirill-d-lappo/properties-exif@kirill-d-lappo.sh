#! /bin/bash

FILENAME="$1"

L_TITLE="${2:-"File Properties"}"
L_BTN_CLOSE="${3:-"Close"}"
L_COL_PROPERTY="${4:-"Property"}"
L_COL_VALUE="${5:-"Value"}"

exiftool "${FILENAME}" | sort | sed 's/:/\n/'  \
  | yad --list \
      --title="${L_TITLE}"  \
      --column="${L_COL_PROPERTY}" --column="${L_COL_VALUE}"  \
      --window-icon=notes  \
      --width=700  \
      --height=600  \
      --button="${L_BTN_CLOSE}"  \
      --dclick-action=""
