#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 -y install emacs
dnf5 -y install mousepad
dnf5 -y install fuzzel
dnf5 -y install thunar
dnf5 -y install thunar-volman
dnf5 -y remove konsole
dnf5 -y remove dolphin
dnf5 -y remove kate
dnf5 -y remove ark
dnf5 -y remove spectacle
dnf5 -y remove kfind
dnf5 -y remove kwrite

# Grab scroll and sway:
# dnf5 -y copr enable mecattaf/duoRPM
# dnf5 -y install scroll
# dnf5 -y copr disable mecattaf/duoRPM

# Grab MangoWC
# dnf5 -y copr enable dennemann/MangoWC
# dnf5 -y install mangowc
# dnf5 -y install scenefx
# dnf5 -y copr disable dennemann/MangoWC

# TUIs
dnf5 -y copr enable nclundell/fedora-extras
dnf5 -y install yazi
dnf5 -y install systemctl-tui
dnf5 -y copr disable nclundell/fedora-extras

# Grab Quickshell
dnf5 -y copr enable mecattaf/packages
dnf5 -y install quickshell-webengine
# dnf5 -y install dms-greeter
dnf5 -y copr disable mecattaf/packages
#### Example for enabling a System Unit File

systemctl enable podman.socket
