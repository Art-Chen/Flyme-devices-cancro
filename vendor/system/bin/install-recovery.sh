#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13590528 f2651d0a5a6cc1061f788a3a8c9e2f945b50bd40 10842112 3b2d11956b8bf502a7bb9d4fc99b85450c33a537
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13590528:f2651d0a5a6cc1061f788a3a8c9e2f945b50bd40; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10842112:3b2d11956b8bf502a7bb9d4fc99b85450c33a537 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f2651d0a5a6cc1061f788a3a8c9e2f945b50bd40 13590528 3b2d11956b8bf502a7bb9d4fc99b85450c33a537:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
