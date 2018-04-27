
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := avcodec
LOCAL_SRC_FILES := prebuilt/libavcodec.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avfilter
LOCAL_SRC_FILES := prebuilt/libavfilter.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avformat
LOCAL_SRC_FILES := prebuilt/libavformat.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avutil
LOCAL_SRC_FILES := prebuilt/libavutil.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swresample
LOCAL_SRC_FILES := prebuilt/libswresample.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swscale
LOCAL_SRC_FILES := prebuilt/libswscale.so
include $(PREBUILT_SHARED_LIBRARY)
# Program FFmpeg

include $(CLEAR_VARS)
LOCAL_MODULE := my_ffmpeg
LOCAL_SRC_FILES := my_ffmpeg.cpp decode_encode_test.cpp my_open_sl_test.cpp \
                    decode_show_gl.cpp video_audio_decode_show.cpp my_thread.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
NDK_TOOLCHAIN_VERSION=4.8
LOCAL_LDLIBS := -llog -lz -landroid -lOpenSLES -lGLESv2 -lEGL
LOCAL_SHARED_LIBRARIES := avfilter avformat avutil swresample swscale avcodec my_ffmpeg
//指定c++11版本
LOCAL_CFLAGS += -std=c++11
include $(BUILD_SHARED_LIBRARY)
