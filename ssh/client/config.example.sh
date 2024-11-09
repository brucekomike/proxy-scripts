#                   __ _       
#   ___ ___  _ __  / _(_) __ _ 
#  / __/ _ \| '_ \| |_| |/ _` |
# | (_| (_) | | | |  _| | (_| |
#  \___\___/|_| |_|_| |_|\__, |
#                        |___/                 
init_system=systemd
proxyuser=proxyuser



if [ "init_system" = "systemd" ]; then
  DAEMON_restart="systemctl restart "
  DAEMON_reload="systemctl reload "
  DAEMON_start="systemctl start "
  DAMMON_stop="systemctl stop "
fi


adduser -m -s /bin/bash $proxyuser
mkdir /home/$proxyuser/.ssh
cd /home/$proxyuser/.ssh
ssh-keygen -t ed25519 -f proxy_key -N ""
