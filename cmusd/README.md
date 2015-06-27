# Cmusd - Cmus Music Player Daemon

Script to automate the the [officially documented process](https://github.com/grandtheftjiujitsu/pkgbuild/tree/master/cmus-daemon) and create a separate command (cmusd) via link from ~/bin/cmusd.sh to /usr/bin/cmusd.

**NOTE:  As it turns out this project amounted only to an exercise in package building as a one-liner shell alias with tmux accomplishes the same task.  Enter the below alias or for funsies keep reading.**

```sh
# ~/.zshrc
alias cmusd="tmux new -s cmus -d cmus"
```

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

*[Link to the official cmus repo](https://github.com/cmus/cmus)
