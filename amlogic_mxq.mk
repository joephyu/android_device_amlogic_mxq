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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our amlogic product configuration
#$(call inherit-product, vendor/amlogic/config/common.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/amlogic/mxq/device_mxq.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := amlogic_mxq
PRODUCT_DEVICE := mxq
PRODUCT_BRAND := Amlogic
PRODUCT_MANUFACTURER := Amlogic
PRODUCT_MODEL := mxq

$(call inherit-product-if-exists, vendor/amlogic/mxq/device-vendor.mk) 
