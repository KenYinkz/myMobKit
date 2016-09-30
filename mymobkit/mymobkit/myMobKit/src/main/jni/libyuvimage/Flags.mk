include $(CLEAR_VARS)

LOCAL_CFLAGS := -fno-math-errno -fno-signed-zeros -ftree-vectorize -D__STDC_CONSTANT_MACROS -fopenmp

LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true

LOCAL_LDFLAGS += -fopenmp

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS += -fprefetch-loop-arrays -funroll-loops
LOCAL_ARM_MODE := arm
endif

