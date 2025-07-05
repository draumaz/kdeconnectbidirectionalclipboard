#!/system/bin/sh

MODDIR="${0%/*}"
MNAME="$(basename ${MODDIR})"
XPKG="org.kde.kdeconnect_tp"

/system/bin/pm grant "${XPKG}" "android.permission.READ_LOGS"
/system/bin/appops set "${XPKG}" "SYSTEM_ALERT_WINDOW" "allow"

/system/bin/am force-stop "${XPKG}"
