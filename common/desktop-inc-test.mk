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

# Crates to generate unit test applications for.

include ../../common/desktop-inc.mk

TRUSTY_RUST_USER_TESTS += \
	trusty/user/app/keymint \
	trusty/user/base/lib/pvmdice \
	trusty/user/desktop/app/finger_guard/svc \
	trusty/user/desktop/app/gsc_svc \
	trusty/user/desktop/app/pinweaver \
	trusty/user/desktop/lib/boot_params \
	trusty/user/desktop/lib/gsc_svc_client \

TEST_BUILD := true
