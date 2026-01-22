# Copyright 2025 The Android Open Source Project
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

QEMU_TRUSTY_PROJECT := desktop-arm64-test-debug

# Enable BTI
KERNEL_BTI_ENABLED ?= true

# D-cache lines are 64 bytes on QEMU arm64
GLOBAL_DEFINES += CACHE_LINE=64

MODULES += \
       trusty/kernel/platform/desktop/arm64/rust \

DEBUG := 2
# TODO(b/473893047) Fix the devicetree and the bootparams module to remove the
# BUILTIN_DEFAULT_SEED_FALLBACK and BUILTIN_BCC workarounds.
# Setting BUILTIN_BCC forces boot_params user programs to use builtin information
# instead of relying on the reserved memory bootparams mappings.
BUILTIN_BCC := true
# Force the bootparams reserved memory mapping module to map a builtin
# default seed when the device tree is missing.
# This works around the missing device tree (b/473893047) on qemu-trusty-desktop.
BUILTIN_DEFAULT_SEED_FALLBACK := true
STORAGE_EXTERNAL_SUPER_BLOCK_MAC := trusty/user/desktop/lib/external_super_block_mac
STORAGE_HAS_RPMB := false
TI50_EMULATOR_PATH := $(abspath out/host/linux-x86/etc/ti50_emulator_x86_64/run.sh)
TRUSTY_VM_INCLUDE_AUTHMGR := false

include ../../../arm/generic-arm64/project/debugging-inc.mk
include ../../../arm/generic-arm64/project/qemu-inc.mk
