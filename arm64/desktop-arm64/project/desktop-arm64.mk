# Copyright 2024 The Android Open Source Project
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

KERNEL_32BIT := false
DEBUG := 1

MODULES += \
       trusty/kernel/platform/desktop/arm64/rust \

STORAGE_HAS_RPMB := false
STORAGE_EXTERNAL_SUPER_BLOCK_MAC := trusty/user/desktop/lib/external_super_block_mac

include ../../../arm/generic-arm64/project/generic-arm-virt-inc.mk
include ../../../arm/generic-arm64/project/generic-arm-inc.mk
include ../../common/desktop-inc.mk
