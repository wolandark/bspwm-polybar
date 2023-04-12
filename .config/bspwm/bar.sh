#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
polybar bartwo 2>&1 | tee -a /tmp/polybar.log & disown
# polybar brokentwo 2>&1 | tee -a /tmp/polybar.log & disown
# polybar broken 2>&1 | tee -a /tmp/polybar.log & disown
# polybar brokenthree 2>&1 | tee -a /tmp/polybar.log & disown

