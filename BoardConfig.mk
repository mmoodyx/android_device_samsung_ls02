#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
TARGET_SPECIFIC_HEADER_PATH := device/samsung/ls02/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/ls02/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4x12
TARGET_KERNEL_CONFIG := cyanogenmod_ls02_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := ls02,ls02xx,SM-V700

# inherit from the proprietary version
-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/ls02/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 819200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2539520

# F2FS filesystem
TARGET_USERIMAGES_USE_F2FS := true

# exFAT kernel support
KERNEL_EXFAT_MODULE_NAME := "exfat"

# Graphics
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Sensors
BOARD_USE_LEGACY_SENSORS_FUSION := false

# Legacy driver compatibility
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/ls02/selinux

BOARD_SEPOLICY_UNION += \
    file_contexts \
    te_macros \
    device.te \
    dhcp.te \
    domain.te \
    file.te \
    init.te \
    kickstart.te \
    mediaserver.te \
    netmgrd.te \
    qmux.te \
    rild.te \
    secril.te \
    system.te \
    ueventd.te \
