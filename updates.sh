#!/usr/bin/env bash

LOG_FILE="/var/log/arch_updates.log"

log_message() { echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | sudo tee -a "$LOG_FILE" > /dev/null; }

echo "" | tee -a "$LOG_FILE"

echo -e "============================"
echo -e "System update in progress..."
echo -e "============================"

if sudo pacman -Syu --noconfirm; then log_message "Pacman updated successfully..."; else log_message "Pacman failed to update..."; exit 1; fi

echo ""

if paru -Syu --noconfirm; then log_message "AUR updated successfully..."; else log_message "AUR failed to update..."; exit 1; fi

echo ""

if paru -Scc; then log_message "AUR cache cleared..."; else log_message "Failed to clear AUR cache..."; exit 1; fi
						
if echo ""; then duf /; fi
