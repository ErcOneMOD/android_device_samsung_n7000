#
# Copyright (C) 2012 The CyanogenMod Project
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

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/n7000/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7000/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_n7000_defconfig
# TARGET_GCC_VERSION_ARM := 4.9
# TARGET_GCC_VERSION_EXP := 4.9
# TARGET_TC_ROM := 4.9 
# TARGET_KERNEL_CUSTOM_TOOLCHAIN := 4.10-linaro

# BlissPop Cinfigs
Bliss_Build_Block := 1

# Inline kernel building lp
TARGET_TC_KERNEL := 4.10-linaro
TARGET_TC_ROM    := 4.9-linaro

#TOUCH_BOOST_DEBUG := false
# GamerMod Optimizations
# GAMERMOD := true
# GRAPHITE_OPTS := true
# STRICT_ALIASING := true
# TARGET_USE_PIPE := true 
# USE_O3_OPTIMIZATIONS := true
# SUPPRES_UNUSED_WARNING := true

# Optimizations
BLISSIFY := true
BLISS_O3 := true
BLISS_STRICT := true
BLISS_GRAPHITE := true
BLISS_PIPE := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)  
# assert
TARGET_OTA_ASSERT_DEVICE := galaxynote,n7000,N7000,GT-N7000

# We have a high res screen, use big font in recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Use the non-open-source parts, if they're present
-include vendor/samsung/n7000/BoardConfigVendor.mk
