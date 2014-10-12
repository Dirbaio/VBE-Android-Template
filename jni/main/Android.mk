LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := $(LOCAL_PATH)/../SDL
VBE_PATH := $(LOCAL_PATH)/../VBE

LOCAL_C_INCLUDES := \
	$(SDL_PATH)/include \
	$(VBE_PATH)

# Add your application source files here...
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/src/*.cpp) \
	)

LOCAL_STATIC_LIBRARIES := SDL2_static VBE_static

LOCAL_CFLAGS += -std=c++11
LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
