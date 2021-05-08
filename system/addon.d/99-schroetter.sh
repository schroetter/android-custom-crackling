#!/sbin/sh
#
# ADDOND_VERSION=2
#
# /system/addon.d/99-schroetter.sh
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
etc/gps_debug.conf
etc/afwall.sh
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -L "$S/$FILE" ] && rm -f "$S/$FILE"
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file "$S/$FILE" "$R"
    done
  ;;
esac
