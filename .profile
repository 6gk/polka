#KDE as Desktop Session for openbox, for Qt themes
#if [[ $DESKTOP_SESSION="openbox" ]]; then
#export DESKTOP_SESSION="kde"
#export XDG_CURRENT_DESKTOP="KDE" 
#export KDE_SESSION_VERSION="5"
#fi

export QT_QPA_PLATFORMTHEME="qt5ct"

#Faster keyboard repeat rate
xset r rate 250 30 

#Allow binaries/scripts from ~/bin to be used in shells without absolute path
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
#Default terminal editor
export EDITOR="vim"
#Default terminal
export TERMINAL="konsole"
#Default browser
export BROWSER="firefox"
export TRUEBROWSER="firefox"


#GTK Global menu
if [ -n "$GTK_MODULES" ]; then
    GTK_MODULES="${GTK_MODULES}:appmenu-gtk-module"
else
    GTK_MODULES="appmenu-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]; then
    UBUNTU_MENUPROXY=1
fi

export GTK_MODULES
export UBUNTU_MENUPROXY

#Default user
export DEFAULT_USER="gauge"

# Start graphical server if openbox not already running.
#if [ "$TTY" = "/dev/tty1" ]; then
#	pgrep -x openbox || exec startx
#fi
