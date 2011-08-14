USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
-include vendor/motorola/olympus/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_BOOTLOADER_BOARD_NAME := olympus
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true

ifeq ($(BUILD_FOR_INTL_D00),true)
        BOARD_KERNEL_CMDLINE := mem=384M@0M nvmem=128M@384M mem=512M@512M vmalloc=256M video=tegrafb console=none usbcore.old_scheme_first=1 tegraboot=sdmmc tegrapart=mbr:d00:100:800,kpanic:2100:400:800 security=tomoyo mot_prod=1
else
ifeq ($(BUILD_FOR_INTL_1100),true)
        BOARD_KERNEL_CMDLINE := mem=384M@0M nvmem=128M@384M mem=512M@512M vmalloc=256M video=tegrafb console=none usbcore.old_scheme_first=1 tegraboot=sdmmc tegrapart=mbr:1100:100:800,kpanic:2500:400:800 security=tomoyo mot_prod=1
else
	BOARD_KERNEL_CMDLINE :=
endif
endif

BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/olympus/recovery/graphics.c

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x14000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/motorola/olympus/kernel
TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false

BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
#BOARD_RECOVERY_IGNORE_BOOTABLES := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_PREINSTALL := true
BOARD_DATA_DEVICE := /dev/block/mmcblk0p16
BOARD_DATA_FILESYSTEM := ext3
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,noatime,nodiratime,data=ordered
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,data=ordered
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext3
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,noatime,nodiratime,data=ordered
BOARD_PREINSTALL_DEVICE := /dev/block/mmcblk0p17
BOARD_PREINSTALL_FILESYSTEM := ext3
BOARD_PREINSTALL_FILESYSTEM_OPTIONS := noatime,nodiratime,data=ordered
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_WEBTOP := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p18
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p18
