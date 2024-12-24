# .dotfiles

[https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles/](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles/)

# Resource openers
[https://wiki.archlinux.org/title/Default_applications](https://wiki.archlinux.org/title/Default_applications)
- Using `xdg-open` is bad because it sometimes doesnt work bc it uses `file` instead of `mimetype` for MIME type detection
- When I tried to open an `index.html` file, it would open in libreoffice writer because the result of `file` is:
```
❯ file index.html 
index.html: ASCII text
```
- Therefore we use `mimeo` and `xdg-utils-mimeo` which makes `xdg-open` fall back to `mimeo`

### `xdg-open` script
- place this in `/usr/local/bin/open`
```
#https://bbs.archlinux.org/viewtopic.php?id=279254
xdg-open "$1" &> /dev/null &
```
