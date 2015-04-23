source $HOME/.xprofile

source /etc/X11/xinit/xinitrc.d/*

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

wmname LG3D

exec /usr/bin/dwm

