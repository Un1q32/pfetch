<p align="center"><img src="https://user-images.githubusercontent.com/6799467/65944518-68834d80-e421-11e9-9b14-6ca26a16108a.png" width="350px"></p>
<h1 align="center">pfetch</h1>
<p align="center">A pretty system information tool written in POSIX sh</p><br>

<img src="https://user-images.githubusercontent.com/6799467/65945384-5bfff480-e423-11e9-863e-4e7cf16eb648.png" width="40%" align="right">

The goal of this project is to implement a simple system
information tool in POSIX `sh` using features built into
the language itself (*where possible*).

The source code is highly documented and I hope it will
act as a learning resource for POSIX `sh` and simple
information detection across various different operating
systems.

If anything in the source code is unclear or is lacking
in its explanation, open an issue. Sometimes you get too
close to something and you fail to see the "bigger
picture"!

<br>
<br>
<br>
<br>

## OS support

- **Linux**
    - Alma Linux, Alpine Linux, Arch Linux, Arco Linux, Artix Linux, AmogOS, CentOS, Dahlia, Debian, Devuan, Elementary, EndeavourOS, EvolutionOS, Fedora, Garuda Linux, Gentoo, Guix, Hyperbola, instantOS, Kali Linux, KISS Linux, Linux Lite, Linux Mint, Mageia, Manjaro, MX Linux, NixOS, Nobara, OpenSUSE, Oracle, Parabola, Pop!\_OS, PureOS, Slackware, Solus, SteamOS, Ubuntu, Vanilla OS and Void Linux.
    - All other distributions are supported with a generic penguin logo.
- **BSD**
    - DragonflyBSD, FreeBSD, NetBSD and OpenBSD.
- **Windows**
    - WSL, Cygwin, MSYS and Busybox-w32.
- **Hurd**
    - Arch Hurd, Debian
    - All other distributions are supported with a generic Hurd logo.
- **Darwin**
    - macOS
    - iOS
    - Probably all other Darwin based operating systems.
- **Android**
- **Haiku**
- **Minix**
- **Solaris**
- **IRIX**
- **SerenityOS**
- **MorphOS**
- **HP-UX**
- **DG/UX**
- **Digital UNIX**

## Configuration

`pfetch` is configured through environment variables.

```sh
# Which information to display.
# NOTE: If 'ascii' will be used, it must come first.
# Default: first example below
# Valid: space separated string, or 'all'
#
# OFF by default: shell editor wm de palette disk term resolution cpus
PF_INFO="ascii title os host kernel uptime pkgs memory"

# Example: Only ASCII.
PF_INFO="ascii"

# Example: Only Information.
PF_INFO="title os host kernel uptime pkgs memory"

# A file to source before running pfetch.
# Default: unset
# Valid: A shell script
PF_SOURCE=""

# Separator between info name and info data.
# Default: unset
# Valid: string
PF_SEP=":"

# Enable/Disable colors in output:
# Default: 1
# Valid: 1 (enabled), 0 (disabled)
PF_COLOR=1

# Disable colors in output, any value will disable colors.
# Default: unset
NO_COLOR=1

# Color of info names:
# Default: unset (auto)
# Valid: 0-9
PF_COL1=4

# Color of info data:
# Default: unset (auto)
# Valid: 0-9
PF_COL2=9

# Color of title data:
# Default: unset (auto)
# Valid: 0-9, COL1
# Setting to COL1 makes the color the same as COL1
PF_COL3=1

# Alignment padding.
# Default: unset (auto)
# Valid: int
PF_ALIGN=""

# Which ascii art to use.
# Default: unset (auto)
# Valid: string
PF_ASCII="openbsd"

# When this is set to the path of a file,
# that file will be used as ascii art
# Default: unset (unused)
# Valid: file path
PF_CUSTOM_ASCII="/path/to/file"

# The below environment variables control more
# than just 'pfetch' and can be passed using
# 'HOSTNAME=cool_pc pfetch' to restrict their
# usage solely to 'pfetch'.

# Which user to display.
USER=""

# Which hostname to display.
HOSTNAME=""

# Which editor to display.
EDITOR=""

# Which shell to display.
SHELL=""

# Which desktop environment to display.
XDG_CURRENT_DESKTOP=""

# Override the value of os
PF_OS=""

# Override the value of host
PF_HOST=""

# Override the value of kernel
PF_KERNEL=""

# Show/Hide Package Manager names
# Default: off
# Valid: on, tiny, off
# Example:
# on:   '1748 (rpm), 11 (flatpak)'
# tiny: '1759 (rpm, flatpak)'
# off:  '1759'
PF_PACKAGE_MANAGERS="on"

# Disable individual package managers
# Default: unset (none)
# Valid: package manager name (first argument passed to the count_pkg function)
PF_DISABLED_PACKAGE_MANAGERS=""

# Enable slower package managers that are disabled by default.
# You can enable only certain package managers by setting this
# and adding unwanted package managers to PF_DISABLED_PACKAGE_MANAGERS.
# Default: unset
# Valid: any value
PF_ENABLE_SLOW_PACKAGE_MANAGERS=

# Mount point of the disk used for disk info
# Default: Usually '/', but can vary on some operating systems.
# Valid: string
PF_DISKPATH="/"
```

## Credit

- [ufetch](https://gitlab.com/jschx/ufetch): Lots of ASCII logos.
- [pfetch-rs](https://github.com/Gobidev/pfetch-rs): Some ASCII logos.
