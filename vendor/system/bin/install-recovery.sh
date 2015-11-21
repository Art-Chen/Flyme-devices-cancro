#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13590528 7acda987f7a6e7fec6c1e653e5b3beb49c40ce8c 10842112 184e5d184a15bc5775ba0a811aa2720f9cf12239
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13590528:7acda987f7a6e7fec6c1e653e5b3beb49c40ce8c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10842112:184e5d184a15bc5775ba0a811aa2720f9cf12239 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 7acda987f7a6e7fec6c1e653e5b3beb49c40ce8c 13590528 184e5d184a15bc5775ba0a811aa2720f9cf12239:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
