# Matugen Color Theme for Omarchy

> [!IMPORTANT]
> This only works for Omarchy.

## Theme Demo Video:

## How to Setup:

1. Clone the GitHub Repo to `./config/omarchy/themes/Matugen` (ensure the theme name is `Matugen` itself)
2. Ensure that matugen is installed. If not, then install it using - `yay -S matugen-bin`
3. Copy the `custom-hook.sh` to `./config/omarchy/hooks/` (can rename the file as desired, just remember to use the same name in step 4.). Make the file executable using the command - `chmod +x <path-to-file>`
4. include the line - `omarchy-hook <hook-name-from-step3> "$NEW_BACKGROUND"` at the end of the file `omarchy-theme-bg-next` in the location `~/.local/share/omarchy/bin/`
5. Done! Now whenever you change the theme to Matugen and even change your background when the theme is Matugen, the system will adapt to your wallapaper/background colors.

> Note:
> For Apps that requires custom hooks to work, you will need to also clone [imbypass](https://github.com/imbypass)'s [omarchy-hook-theme](https://github.com/imbypass/omarchy-hook-theme/) Repo to `~/.config/omarchy/hooks`
> Alternatively, you can follow the instructions of the [omarchy-hook-theme](https://github.com/imbypass/omarchy-hook-theme-set-ex/tree/main) repo.

## Currently Supports:

- Alacritty
- Btop
- Chromium
- GTK 3 and 4 (Contains stylesheet but requires custom hooks) (Requires you to have `adw-gtk` theme, which can be downloaded by - `sudo pacman -S adw-gtk-theme`)
- Hyprland
- Hyprlock
- Mako (Notification Daemon)
- Neovim (Uses [Aether](https://github.com/bjarneo/aether.nvim) Plugin by [bjarneo](https://github.com/bjarneo))
- Obsidian
- SwayOSD
- Spicetify (Requires custom hooks)
- Vesktop / Vencord (contains stylesheet but requires custom hooks)
- Walker
- Waybar

## TODO:

- Firefox
- Ghostty
- Kitty
- Qt apps
- VS Code
- Zed

## Extra Info:

- This repo can be used along with [`omarchy-hook-theme`](https://github.com/imbypass/omarchy-hook-theme-set-ex/tree/main), which generates color pallettes for multiple other apps including Zed, VS Code, and many more.
- Feel free to make any changes to the template files as per your tastes :).
- Any extra templates can be added to the templates folder and the necessary config can be added to the `matugen-config.toml` file. Refer to [Matugen](https://github.com/InioX/matugen) and [Matugen Themes](https://github.com/InioX/matugen-themes) for more info.
