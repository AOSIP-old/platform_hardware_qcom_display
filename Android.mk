ifeq ($(call my-dir)/$(TARGET_BOARD_PLATFORM),$(call project-path-for,qcom-display))

# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(TARGET_BOARD_AUTO),true)

ifneq ($(filter msm8x84,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8084)
else ifneq ($(filter msm8x26,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8226)
else ifneq ($(filter msm8992,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,msm8994)
else ifneq ($(wildcard $(LOCAL_PATH)/$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,$(TARGET_BOARD_PLATFORM))
endif

endif

endif
