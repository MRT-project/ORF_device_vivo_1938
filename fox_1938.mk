#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2023-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# OrangeFox-specific settings #

# maintainer
OF_MAINTAINER := AnGgIt86 M•R•T

# Version of orangefox recovery automatic
FOX_MAINTAINER_PATCH_VERSION := 1

# screen
OF_SCREEN_H := 2340
OF_STATUS_H := 125
OF_STATUS_INDENT_LEFT := 150
OF_STATUS_INDENT_RIGHT := 85
OF_HIDE_NOTCH := 1
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# other stuff
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_FBE_METADATA_MOUNT_IGNORE := 1
OF_USE_GREEN_LED := 0

# TWRP recovery
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1

# patch avb20 - some ROM recoveries try to overwrite custom recoveries
OF_PATCH_AVB20 := 1

# support disabling avb2.0 by patching vbmeta/vbmeta_system
OF_SUPPORT_VBMETA_AVB2_PATCHING := 1

# all partition tools - filter, and support TW_ENABLE_ALL_PARTITION_T
OF_ENABLE_ALL_PARTITION_TOOLS := 1

# quick backup defaults
OF_QUICK_BACKUP_LIST := /boot;/data;/system_image;/vendor_image;/product_image;

# necessary to decrypt most begonia ROMs (trigger "TW_PREPARE_DATA_MEDIA_EARLY")
OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1

# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1

# flashlight doesn't work
OF_FLASHLIGHT_ENABLE := 0

# no MIUI stuff
OF_DISABLE_OTA_MENU := 1

# legacy services for battery
OF_USE_LEGACY_BATTERY_SERVICES := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 9

# whether to wipe /metadata after formatting data
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1

# if using the prebuilt LZ4 binary, ensure that liblz4.so is included
FOX_USE_LZ4_BINARY := 1

# Nano
FOX_USE_NANO_EDITOR := 1

# Magisk (Magisk does not work on vivo)
FOX_DELETE_MAGISK_ADDON := 1

# whether to use the updated magiskboot
FOX_USE_UPDATED_MAGISKBOOT := 1

# enable vbmeta patch in magiskboot 24+
FOX_PATCH_VBMETA_FLAG := 1

# some mtk devices will need this, consequent upon recent build system commits
OF_FORCE_USE_RECOVERY_FSTAB := 1

# Binaries
FOX_USE_BASH_SHELL := 1
FOX_ASH_IS_BASH := 1
FOX_USE_GREP_BINARY := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_ZIP_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_REPLACE_TOOLBOX_GETPROP := 1
FOX_USE_XZ_UTILS := 1
FOX_REPLACE_BUSYBOX_PS := 1
OF_ENABLE_LPTOOLS := 1
FOX_ENABLE_APP_MANAGER := 1
