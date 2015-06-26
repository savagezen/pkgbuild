# Cmusd - Cmus Music Player Daemon

Script to automate the the [officially documented process](https://github.com/grandtheftjiujitsu/pkgbuild/tree/master/cmus-daemon) and create a separate command (cmusd) via link from ~/bin/cmusd.sh to /usr/bin/cmusd.

### Installation

```sh
$ pacman -S screen
$ curl -r https://github.com/grandtheftjiujitsu/pkgbuild/tree/master/cmusd
$ cd github.com/grandtheftjiujitsu/pkgbuild/cmusd
    Arch Users:  $ makepkg -s
    Others:  Mimic the steps in the package() function in the PKGBUILD
```

###Usage

```sh
$ cmusd                     # start daemon
$ cmus-remote --raw q       # kill daemon
```

### Future Plans
- Maybe package and submit to AUR
- Possibly expand PKGBUILD to build cmus from source

*[Link to the official cmus repo](https://github.com/cmus/cmus)
