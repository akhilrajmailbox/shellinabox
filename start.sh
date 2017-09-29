#!/bin/bash
CONFIG_PATH=/etc/default/shellinabox
SECURE_PORT=5688

if [ ! -e /root/shellinabox-boot ]; then
echo "configuring secure ssh server for first run"
echo ""

sed -i "s|^SHELLINABOX_PORT=.*|SHELLINABOX_PORT=$SECURE_PORT|g" $CONFIG_PATH
sed -i "s|^SHELLINABOX_ARGS=.*|SHELLINABOX_ARGS='--no-beep -t -s /:SSH:localhost'|g" $CONFIG_PATH

echo "do not remove this file" > /root/shellinabox-boot
fi

/etc/init.d/ssh restart & wait
/etc/init.d/nscd restart & wait

/etc/init.d/shellinabox restart & wait
tailf /root/start.sh
