#!/bin/bash

glances -w &
glances_pid=$!
sleep 5

url="http://localhost:61208"
folder="$HOME/SYSTEM-REPORTS"
mkdir -p "$HOME/SYSTEM-REPORTS"
filename="REPORT_$(date +%F).pdf"
out="$folder/$filename"
mail="mathewabhinav2005@gmail.com"
google-chrome --headless --disable-gpu --virtual-time-budget=15000 --print-to-pdf=$out $url
sleep 3

echo "PREPARING REPORT..."

if [[ -f "$out" ]]; then
  echo "System report attached" | mailx -s "system-report" -a "$out" "$mail"
else
  echo "Error: Report file not found!"
fi

sleep 6
echo "Done!"

kill $glances_pid


