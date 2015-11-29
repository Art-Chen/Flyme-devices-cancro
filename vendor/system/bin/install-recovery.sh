#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13588480 11f1add3a3a259d8267934461f0633c9ccd489e9 10840064 996833e72443bf8dfe821bfcbbf713988815c2c1
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13588480:11f1add3a3a259d8267934461f0633c9ccd489e9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10840064:996833e72443bf8dfe821bfcbbf713988815c2c1 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 11f1add3a3a259d8267934461f0633c9ccd489e9 13588480 996833e72443bf8dfe821bfcbbf713988815c2c1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
