#!/sbin/sh
mount /system
device=`getprop ro.product.device`
case $device in
    shamu)
        block=/dev/block/platform/msm_sdcc.1/by-name/frp
        offset=524287
	;;
    flounder*)
        block=/dev/block/platform/sdhci-tegra.3/by-name/PST
        offset=524284
	;;
    *)     
	exit 1 
esac
echo -ne "\x01" | dd obs=1 count=1 seek=$offset of=$block
umount /system
exit 0

