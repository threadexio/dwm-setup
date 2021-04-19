# dwm-setup (aka my .files)

You can find more images and rices over on my reddit profile, I will eventually commit them here

[![asdas](https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/user/RageAlert)


## Rices
---------------------
![alt text](/images/desktop.png)
---------------------

## Installation

0. Backup your current configs (if you have any)

<hr>

1. Clone this repo

2. Copy the `dwm`, `dmenu`, `polybar-dwm-module` to somewhere on your disk (preferably not /tmp) and compile them

<table>
<tr><td>Folder</td><td>Compile command</td></tr>
<tr><td>dwm</td><td>make clean install</td></tr>
<tr><td>dmenu</td><td>make clean install</td></tr>
<tr><td>polybar-dwm-module</td><td>./build.sh</td></tr>
</table>

<hr>

3. Copy the `others` folder to `~/.config/dwm`

4. Set the wallpaper

**Note:** The autostart script reads a symlink at `/usr/share/wallpapers/current` and sets it as the wallpaper, this way when you want to change wallpapers, you `unlink` the current one and link the new one. So make sure you change `~/.config/dwm/autostart_blocking.sh` or link your wallpaper

5. Colors using pywal (optional)
```bash
wal -i /path/to/the/wallpaper.png
```

6. You are done!
