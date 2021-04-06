#!/sbin/sh
case "$1"
in
	backup)
		cp -pf "/system/etc/gps_debug.conf" "/system/etc/gps_debug.bkp"
		rm -f "/system/etc/gps_debug.conf"
		;;

	restore)
		rm -f "/system/etc/gps_debug.conf"
		ln -s "/data/local/gps.conf" "/system/etc/gps_debug.conf"
		;;
esac
