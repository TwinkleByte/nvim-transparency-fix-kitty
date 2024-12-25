#!/bin/bash

# Path to the actual kitty.conf file
KITTY_CONF="$HOME/.config/kitty/kitty.conf"

# Comment background_opacity in kitty.conf, but only if it's not already commented
sed -i '/background_opacity/ { /^#/! s/^/#/ }' "$KITTY_CONF"

# Reload kitty config
kitty @ load-config

# Launch nvim
nvim

# Uncomment background_opacity in kitty.conf after exiting nvim
sed -i '/background_opacity/ { /^#/ s/^#// }' "$KITTY_CONF"

# Reload kitty config again
kitty @ load-config