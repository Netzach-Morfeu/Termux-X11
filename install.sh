#/bin/bash
yes | pkg upgrade; pkg update
pkg install git -y
pkg install root-repo -y
pkg install x11-repo -y
termux-change-repo
echo "allow-external-apps = true" >> ~/.termux/termux.properties && termux-reload-settings
pkg install x11-repo && pkg install termux-x11-nightly xwayland -y
echo 'termux-x11 :1 -xstartup "dbus-launch --exit-with-session xfce4-session"' > $PREFIX/bin/start-termux-x11 && chmod +x $PREFIX/bin/start-termux-x11
pkg install xfce4 -y
pkg install netsurf -y
start-termux-x11