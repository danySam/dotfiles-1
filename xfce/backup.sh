#!/bin/bash

mkdir -p config/xfce4
rsync -av --progress -h --exclude-from=$HOME/.cvsignore \
  --exclude=desktop \
  --exclude=displays.xml \
  --exclude=parole.xml \
  --exclude=xfce4-screenshooter \
  $HOME/.config/xfce4/* \
  config/xfce4

mkdir -p config/Thunar
rsync -av --progress -h --exclude-from=$HOME/.cvsignore \
  $HOME/.config/Thunar/* \
  config/Thunar

mkdir -p gconf/apps/dockbarx
rsync -av --progress -h --exclude-from=$HOME/.cvsignore \
  $HOME/.gconf/apps/dockbarx/%gconf.xml \
  gconf/apps/dockbarx/%gconf.xml