# dotfiles

You can find more images and rices over on my reddit profile, I will eventually commit them here

[![reddit](https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/user/RageAlert)

---------------------
![alt text](/images/rice2.png)
---------------------

- Bar: polybar

- Terminal: kitty

- Browser: firefox w/ [tabliss](https://tabliss.io/)

- Colors: pywal

- VS Code Theme: [Discord Theme](https://marketplace.visualstudio.com/items?itemName=tanmay.discord-theme)

- Wallpaper: Custom made in Blender (wallpapers/arch.png)

- Compositor: picom

- System monitor: bpytop

- Rofi w/ pywal's theme

- Editor: nvim

## Installation

1. Clone this repo
```
git clone --recursive https://github.com/threadexio/dotfiles && cd dotfiles
```

2. Copy everything from `config/` to `~/.config/`
```
cp -r config/* ~/.config
# This WILL overwrite files, take a backup
```

3. Copy everything from `local/` to `~/.local/`
```
cp -r local/* ~/.local
# This WILL overwrite files, take a backup
```

4. Copy `wallpapers/arch.png` to `/usr/share/wallpapers/arch.png`
```
cp wallpapers/arch.png /usr/share/wallpapers
```

5. Add a symlink to `/usr/share/wallpapers/arch.png` in `/usr/share/wallpapers/current`
```
ln -s /usr/share/wallpapers/arch.png /usr/share/wallpapers/current
```
