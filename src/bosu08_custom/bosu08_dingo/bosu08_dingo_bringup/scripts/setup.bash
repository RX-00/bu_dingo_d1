# Reset ethernet port on HUB
$(/usr/sbin/usb_modeswitch -v 0bda -p 8151 -V 0bda -P 8153 -M 555342430860d9a9c0000000800006e0000000000000000000000000000000 --reset-usb | 2>/dev/null)
