#!/bin/bash

echo running "$1"

tell application "Terminal"
  activate
  tell application "System Events"
    keystroke "t" using {command down}
  end tell
  do script $1 in selected tab of the front window
end tell
