#!/bin/bash

# Internal display identifier
INTERNAL_DISPLAY="eDP-1-1"

# Find a connected external display
EXTERNAL_DISPLAY=$(xrandr | grep " connected" | grep -v "$INTERNAL_DISPLAY" | awk '{ print $1 }')

if [ -n "$EXTERNAL_DISPLAY" ]; then
  # External display is connected, set it as primary and turn off the laptop display
  xrandr --output "$INTERNAL_DISPLAY" --off --output "$EXTERNAL_DISPLAY" --auto --primary
else
  # No external display is connected, turn on the laptop display
  xrandr --output "$INTERNAL_DISPLAY" --auto --primary --output "$EXTERNAL_DISPLAY" --off
fi
