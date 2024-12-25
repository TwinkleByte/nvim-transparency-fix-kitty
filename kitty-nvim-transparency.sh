#!/bin/bash

# Path to the actual kitty.conf file
KITTY_CONF="$HOME/.config/kitty/kitty.conf"

# Comment background_opacity in kitty.conf, but only if it's not already commented
sed -i '/background_opacity/ { /^#/! s/^/#/ }' "$KITTY_CONF"

# Reload kitty config
kitty @ load-config

# Check if a file path is provided, and open that file in nvim
if [ -n "$1" ]; then
  nvim "$1"
else
  # Otherwise, launch nvim without a file
  nvim
fi

# Uncomment background_opacity in kitty.conf after exiting nvim
sed -i '/background_opacity/ { /^#/ s/^#// }' "$KITTY_CONF"

# Reload kitty config again
kitty @ load-config
