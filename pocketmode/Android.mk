LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := MotoPocketMode
LOCAL_CERTIFICATE := platform
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_VENDOR_MODULE := true
LOCAL_REQUIRED_MODULES := pocketmode_whitelist.xml

LOCAL_STATIC_JAVA_LIBRARIES := \
    org.lineageos.platform.internal

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := pocketmode_whitelist.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := sysconfig
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
