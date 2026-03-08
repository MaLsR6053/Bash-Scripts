#!/usr/bin/env bash
set -e

############################
# tmux mouse configuration
############################

TMUX_CONF="/root/.tmux.conf"

touch "$TMUX_CONF"

grep -q "^set -g mouse on" "$TMUX_CONF" || {
printf "\n# Enable mouse support\nset -g mouse on\n" >> "$TMUX_CONF"
}

############################
# Caido install (latest)
############################

# only install if not already present
command -v caido >/dev/null 2>&1 || {

# URL pattern — update version here if pinned
CAIDO_VERSION="0.55.2"
CAIDO_DEB_URL="https://caido.download/releases/v${CAIDO_VERSION}/caido-desktop-v${CAIDO_VERSION}-linux-x86_64.deb"
TEMP_DEB="/tmp/caido.deb"

curl -fsSL "$CAIDO_DEB_URL" -o "$TEMP_DEB" && \
dpkg -i "$TEMP_DEB" >/dev/null 2>&1 || \
apt-get -f install -y >/dev/null 2>&1

rm -f "$TEMP_DEB"
}
