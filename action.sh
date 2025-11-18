#!/system/bin/sh

MODDIR="${0%/*}"
MNAME="$(basename ${MODDIR})"
XPKG="org.kde.kdeconnect_tp"


echo "granting READ_LOGS permissions"
/system/bin/pm grant "${XPKG}" "android.permission.READ_LOGS"
echo "granting SYSTEM_ALERT_WINDOW permissions"
/system/bin/appops set "${XPKG}" "SYSTEM_ALERT_WINDOW" "allow"

cat <<  EOF
starting ${XPKG}

>>> IMPORTANT !!!! <<<
>>> Allow One-Time Access on the next screen. <<<
EOF

/system/bin/am force-stop "${XPKG}"; sleep 0.25
/system/bin/monkey -p "${XPKG}" 1
