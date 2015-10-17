#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13588480 308d2152f651005cafea80ea4c6c8a6bc4a66f74 10838016 652bcce6735b4b2f354266b3af3d8acdafd8e3a5
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13588480:308d2152f651005cafea80ea4c6c8a6bc4a66f74; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10838016:652bcce6735b4b2f354266b3af3d8acdafd8e3a5 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 308d2152f651005cafea80ea4c6c8a6bc4a66f74 13588480 652bcce6735b4b2f354266b3af3d8acdafd8e3a5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
