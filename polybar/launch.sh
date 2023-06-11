killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar sysinfo 2>&1 | tee -a /tmp/polybar1.log & disown
polybar workspace 2>&1 | tee -a /tmp/polybar2.log & disown
polybar window 2>&1 | tee -a /tmp/polybar3.log & disown
polybar extra 2>&1 | tee -a /tmp/polybar4.log & disown
  


echo "Polybar launched"

