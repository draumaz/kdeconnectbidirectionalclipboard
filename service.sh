#!/system/bin/sh
MODDIR=${0%/*}
MNAME=$(basename $MODDIR)

sleep 20
/system/bin/pm grant org.kde.kdeconnect_tp android.permission.READ_LOGS;
/system/bin/appops set org.kde.kdeconnect_tp SYSTEM_ALERT_WINDOW allow;
/system/bin/am force-stop org.kde.kdeconnect_tp;
