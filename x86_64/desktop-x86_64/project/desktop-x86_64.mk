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

MODULES += \
       trusty/kernel/platform/desktop/x86_64/rust \

STORAGE_HAS_RPMB := false
STORAGE_EXTERNAL_SUPER_BLOCK_MAC := trusty/user/desktop/lib/external_super_block_mac

include ../../../x86/generic-x86_64/project/generic-x86_64-inc.mk
include ../../common/desktop-inc.mk
