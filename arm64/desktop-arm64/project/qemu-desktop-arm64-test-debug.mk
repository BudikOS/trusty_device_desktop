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

include ../../../arm/generic-arm64/project/debugging-inc.mk
include ../../../arm/generic-arm64/project/qemu-inc.mk
