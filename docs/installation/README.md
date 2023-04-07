Installation
============

Prerequirements
---------------

### On Arch Linux 
`sudo pacman -S base-devel libx11 libxft libxinerama freetype2 fontconfig`

* [base-devel][dep-arch-base-devel]
* [libx11][dep-arch-libx11]
* [libxft][dep-arch-libxft]
* [libxinerama][dep-arch-libxinerama]
* [freetype2][dep-arch-freetype2]
* [fontconfig][dep-arch-fontconfig]


### On Debian  
`sudo apt install build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev`

* [build-essential][dep-deb-build-essential]
* [libx11-dev][dep-deb-libx11-dev]
* [libxft-dev][dep-deb-libxft-dev]
* [libxinerama-dev][dep-deb-libxinerama-dev]
* [libfreetype6-dev][dep-deb-libfreetype6-dev]
* [build-libfontconfig1-dev][dep-deb-libfontconfig1-dev]

### On OpenBSD
If [Xenocara](https://xenocara.org) installed, then prerequirements are already provided.

### On Void Linux
`sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel`

* [base-devel][dep-vol-base-devel]
* [libX11-devel][dep-vol-libX11-devel]
* [libXft-devel][dep-vol-libXft-devel]
* [libXinerama-devel][dep-vol-libXinerama-devel]
* [freetype-devel][dep-vol-freetype-devel]
* [fontconfig-devel][dep-vol-fontconfig-devel]


How to install
--------------
### Step-1: Clone repositories
Firstly, you need to clone some of repositories including this repository into any folder you want

```
git clone https://git.suckless.org/st

git clone https://git.suckless.org/dmenu

git clone https://github.com/rasnesakam/dwme.git
```
### Step-2: Compile
Go to repositories you cloned and execute `make` command for them
```
cd /optional/dir/st
sudo make clean install


cd /optional/dir/dmenu
sudo make clean install

cd /optional/dir/dwme
sudo make clean install
```

### Step-3: Start dwm
If you’re using startx, simply add exec /usr/local/bin/dwm at the end of your .xinitrc file on Linux, or at the end of your .xsession file on OpenBSD.

### Use in the display manager
If you are using display manager, you can simply create a desktop file with this content

```

[Desktop Entry]
Encoding=UTF-8
Name=Dwm
Comment=Dynamic window manager
Exec=/usr/local/bin/dwm
Icon=dwm
Type=XSession

```
Move this file into `/usr/share/xsessions`  
If dwm refuses to start, change the Exec path (/usr/local/bin/dwm) to simply dwm.













<!-- Relative links for Arch dependents -->
[dep-arch-base-devel]: https://archlinux.org/groups/x86_64/base-devel/

[dep-arch-libx11]: https://archlinux.org/packages/extra/x86_64/libx11/

[dep-arch-libxft]: https://archlinux.org/packages/extra/x86_64/libxft/

[dep-arch-libxinerama]: https://archlinux.org/packages/extra/x86_64/libxinerama/

[dep-arch-freetype2]: https://archlinux.org/packages/extra/x86_64/freetype2/

[dep-arch-fontconfig]: https://archlinux.org/packages/extra/x86_64/fontconfig/

<!-- Relative links for Debian dependents -->

[dep-deb-build-essential]: https://packages.debian.org/tr/sid/build-essential

[dep-deb-libx11-dev]: https://packages.debian.org/tr/bullseye/libx11-dev

[dep-deb-libxft-dev]: https://packages.debian.org/tr/bullseye/libxft-dev

[dep-deb-libxinerama-dev]: https://packages.debian.org/tr/bullseye/libxinerama-dev

[dep-deb-libfreetype6-dev]: https://packages.debian.org/tr/bullseye/libfreetype6-dev

[dep-deb-libfontconfig1-dev]: https://packages.debian.org/tr/bullseye/libfontconfig1-dev


<!-- Relative links for Void linux dependents -->

[dep-vol-base-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/base-devel-20181003_2.x86_64.xbps.html

[dep-vol-libX11-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/libX11-devel-1.8.1_1.x86_64.xbps.html

[dep-vol-libXft-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/libXft-devel-2.3.4_1.x86_64.xbps.html

[dep-vol-libXinerama-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/libXinerama-devel-1.1.4_1.x86_64.xbps.html

[dep-vol-freetype-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/freetype-devel-2.12.1_2.x86_64.xbps.html

[dep-vol-fontconfig-devel]: https://voidlinux.pkgs.org/current/voidlinux-main-x86_64/fontconfig-devel-2.14.0_1.x86_64.xbps.html