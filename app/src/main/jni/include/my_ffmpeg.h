/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class module_video_jnc_myffmpeg_FFmpegUtils */

#ifndef _Included_module_video_jnc_myffmpeg_FFmpegUtils
#define _Included_module_video_jnc_myffmpeg_FFmpegUtils
#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT jstring JNICALL Java_module_video_jnc_myffmpeg_FFmpegUtils_stringNative(JNIEnv *env ,jclass clazz);

/*
 * Class:     module_video_jnc_myffmpeg_FFmpegUtils
 * Method:    stringJni
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jint JNICALL Java_module_video_jnc_myffmpeg_FFmpegUtils_decodeMp4ToYuvPcm
        (JNIEnv  *env ,jclass clazz , jstring path ,  jobject surface );

JNIEXPORT jint JNICALL Java_module_video_jnc_myffmpeg_FFmpegUtils_openSLTest(JNIEnv *env ,jclass clazz  ,jstring path);
#ifdef __cplusplus
}
#endif
#endif
