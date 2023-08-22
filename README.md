# KDE Connect Bidirectional Clipboard
A Magisk module that allows KDE Connect to automatically sync the Android clipboard to desktop.
- [The commands it's running](https://github.com/KDE/kdeconnect-android/commit/edc655da5ac1eb5c3027c8556cc62037a1d4c5ac#diff-ac7ef6bdb0cb04522672bc5149779c69324abb1aadf808b74223a603b5771a6bR31)

### These commands don't actually require root, but automation is the spice of life, and that does.

- Thanks to [this XDA post](https://forum.xda-developers.com/t/mod-magisk-force-dark-boot.4366397/), without whose package structuring examples this could have never been

### Install (adb shell)

```
su -c 'cd /sdcard/Download; \
  curl -fLO https://github.com/draumaz/kdeconnectbidirectionalclipboard/releases/download/1/kdeconnectbidirectionalclipboard-v1.zip; \
  magisk --install-module kdeconnectbidirectionalclipboard-v1.zip;'
```
