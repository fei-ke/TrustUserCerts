MODDIR=${0%/*}

mkdir -p $MODDIR/cacerts
rm $MODDIR/system/etc/security/cacerts/*
cp -f /system/etc/security/cacerts/* $MODDIR/cacerts/
cp -f /data/misc/user/0/cacerts-added/* $MODDIR/cacerts/
set_perm_recursive $MODDIR/system/etc/security/cacerts/ root root 644 644 u:object_r:system_security_cacerts_file:s0

mount --bind $MODDIR/cacerts/ /system/etc/security/cacerts/
