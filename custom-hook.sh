#!/bin/bash

CURRENT_WALLPAPER_PATH="$1"

if [[ -z "$CURRENT_WALLPAPER_PATH" ]]; then
   echo "Usage: $0 <path-to-current-wallpaper>"
   exit 1
fi

CURRENT_THEME="$(omarchy-theme-current 2>/dev/null)"

TARGET_THEME="Matugen"

if [[ "$CURRENT_THEME" == "$TARGET_THEME" ]]; then
  echo "Current theme is $CURRENT_THEME — preparing to update Matugen colors..."

  # --- Check if matugen is installed ---
  if ! command -v matugen &>/dev/null; then
    echo "Matugen is not installed. Skipping theme update."
    notify-send "Matugen Theme" "Matugen is not installed on this system."
    exit 1
  fi

  matugen -c "$XDG_CONFIG_HOME/omarchy/themes/matugen/matugen-config.toml" image "$CURRENT_WALLPAPER_PATH"

  omarchy-theme-set-obsidian

  error() {
    echo -e "\e[31m[ERROR]\e[0m $1"
    exit 1
  }

  if [[ -d ~/.config/omarchy/hooks/theme-set.d ]]; then
    for hook in ~/.config/omarchy/hooks/theme-set.d/*.sh; do
      if [[ -f "$hook" && -x "$hook" ]]; then
        if ! "$hook" "$@"; then
            error "Hook $(basename "$hook") failed!" >&2
        fi
      fi
    done
  fi

  notify-send "Updated Colors" "Updated System colors using Matugen"
fi
