#!/sbin/sh

RADIO=`getprop ro.boot.radio`

rm -rf /system_root/system/priv-app/MotoDoze
if ["$RADIO" == "Brazil" ] || [ "$RADIO" == "APAC" ] || [ "$RADIO" == "EMEA" ]; then
    # Remove e-compass file for APAC, Brazil and EMEA RADIOs
    rm /vendor/etc/permissions/android.hardware.sensor.compass.xml
fi
