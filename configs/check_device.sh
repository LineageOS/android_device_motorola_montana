#!/sbin/sh

RADIO=`getprop ro.boot.radio`

rm -rf /system_root/system/priv-app/MotoDoze
if ["$RADIO" == "Brazil" ] || [ "$RADIO" == "APAC" ] || [ "$RADIO" == "EMEA" ] || [ "$RADIO" == "China" ]; then
    # Remove e-compass file for APAC, Brazil and EMEA RADIOs
    rm /vendor/etc/permissions/android.hardware.sensor.compass.xml
fi
if [ "$RADIO" == "China" ]; then
    mv /vendor/etc/libnfc-nxp_retcn.conf /vendor/etc/libnfc-nxp.conf
fi
