# ANXCamera
include vendor/ANXCamera/BoardConfigAnx.mk

# Google Apps
ifneq ($(BUILD_VANILLA), true)
include vendor/gms/products/board.mk
endif
