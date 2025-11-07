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
	trusty/user/app/keymint/vm/commservice/app \
	trusty/user/app/storage \
	trusty/user/base/app/system_state_server_static \
	trusty/user/desktop/app/finger_guard/app \
	trusty/user/desktop/app/gsc_svc/app \
	trusty/user/desktop/app/hwbcc \
	trusty/user/desktop/app/hwkey/rust \
	trusty/user/desktop/app/keymint_strongbox/app \
	trusty/user/desktop/app/pinweaver/app \
	trusty/user/desktop/app/weaver/app \

# Desktop specific keymint access policy.
TRUSTY_KM_RUST_ACCESS_POLICY := trusty/user/desktop/lib/keymint_access_policy

STORAGE_HAS_FS_TDP := true
STORAGE_USE_EARLY_TDP := true
SECURE_STORAGE_USE_TDP := true
VSOCK_WITH_VIRTIO_MSG_DRIVER := false
GATEKEEPER_STORAGE_PORT := STORAGE_CLIENT_TDP_PORT
USE_SYSTEM_BINDER := true
TRUSTY_VM_INCLUDE_KEYMINT ?= true
TRUSTY_VM_INCLUDE_GATEKEEPER ?= true
TRUSTY_VM_ENABLE_KEYMINT_PROVISIONING ?= true
TRUSTY_VM_INCLUDE_FINGERGUARD ?= true
KEYMINT_PROVISIONING_VIA_HAL := true
UDS_USE_CHROMEOS_SIGNER_NAME := true

GATEKEEPER_MANIFEST := trusty/user/app/gatekeeper/manifest-desktop.json
