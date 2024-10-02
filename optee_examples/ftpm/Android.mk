###################### optee-ftpm ######################
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -DANDROID_BUILD
LOCAL_CFLAGS += -Wall

LOCAL_SRC_FILES += optee_host/main.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/optee_ta/fTPM/include 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/optee_ta/fTPM/lib 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/optee_ta/fTPM/TPMCmd/tpm/include 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/optee_ta/fTPM/reference 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/optee_ta/fTPM/reference/include

LOCAL_SHARED_LIBRARIES := libteec
LOCAL_MODULE := optee_ftpm
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(LOCAL_PATH)/optee_ta/fTPM/Android.mk