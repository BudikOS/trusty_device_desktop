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

# Configurations common to Trusty builds for Android Desktop.

TRUSTY_BUILTIN_USER_TASKS := \
	trusty/user/app/gatekeeper \
	trusty/user/app/keymint/app \
	trusty/user/app/storage \
	trusty/user/base/app/apploader \
	trusty/user/base/app/system_state_server_static \
	trusty/user/desktop/app/gsc_svc/app \
	trusty/user/desktop/app/pinweaver/app \

# TODO(359377657): Until we have real applications that leverage the GSC, use
# sample services with fake implementations. Having these applications available
# enables the Desktop image to pass the KeyMint unit tests and boot the OS. This
# useful for development.
TRUSTY_BUILTIN_USER_TASKS += \
	trusty/user/app/sample/hwbcc \
	trusty/user/app/sample/hwcrypto \

WITH_FAKE_HWRNG ?= true
WITH_FAKE_HWKEY ?= true
WITH_FAKE_KEYBOX ?= true
# Remove lines above once real services exist.
