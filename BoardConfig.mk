BOARD_VENDOR := Huawei

USE_CAMERA_STUB := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hi6620oem
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_BOOTLOADER_BOARD_NAME := hwp7
BOARD_VENDOR_PLATFORM := hi6620oem

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlcore_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wlcore_sdio"
WIFI_FIRMWARE_LOADER             := ""
BOARD_WIFI_SKIP_CAPABILITIES     := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_WPAN_DEVICE := true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp

# Graphics
BOARD_EGL_CFG := device/huawei/hwp7/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_CMDLINE := k3v2mem k3v2_ion=1 vmalloc=448M maxcpus=4 initcall_debug=n
BOARD_KERNEL_BASE := 0x08600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x0c600000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12740198400

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_MAX_PARTITIONS := 30

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_TOUCH_RECOVERY := 
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_SDCARD_INTERNAL := true
RECOVERY_FSTAB_VERSION := 2
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/hw7/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/huawei/hwp7/recovery/recovery.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

BOARD_RECOVERY_SWIPE := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/hwp7/kernel
TARGET_RECOVERY_INITRC := device/huawei/hwp7/recovery/init.rc

#TWRP

HAVE_SELINUX := true

TW_HAS_MTP := true

TW_ALWAYS_RMRF := true
TW_NO_CPU_TEMP := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"

RECOVERY_SDCARD_ON_DATA := true 
TW_FLASH_FROM_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_BRIGHTNESS_PATH := "/sys/devices/platform/k3_fb.1/leds/lcd_backlight0/brightness"
#TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/hi6620-tsensor.1/acputemp"
