# TWRP X5
TeamWin Recovery Project (TWRP) device tree for DOOGEE X5 (MTK6580), Supports Android 10 with decryption.

- Based on AOSP 11 TWRP repo.
- Tested on ALPS 10 with dynamic partitions, system-as-root, AVB2.0 and FBE encrypted.
- Uses Stock kernel.
- Unlock your bootloader in Settings, then in fastboot (your device will factory-reset), then your are able to flash.
- Can be ported to all arm mtk chipsets.

Blocking checks
- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] Reboot to system
- [X] Reboot to fastboot (fastbootd -- for flashing gsi/super partitions)
- [X] ADB

Medium checks
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [X] All important partitions listed in mount/backup lists
- [X] Decrypt /data
- [X] Correct date

Minor checks
- [X] MTP export
- [X] Reboot to bootloader
- [X] Reboot to recovery
- [X] Reboot to bootloader (old fastboot mode)
- [X] Poweroff
- [X] Battery level
- [X] Temperature
- [X] Encrypted backups
- [X] USB mass storage export
- [X] Set brightness
- [X] Vibrate
- [X] Screenshot
- [X] Partition SD card
