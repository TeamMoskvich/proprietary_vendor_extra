# ANXCamera
$(call inherit-product, vendor/ANXCamera/anx-vendor.mk)

# Gboard side padding
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_l=4 \
    ro.com.google.ime.kb_pad_port_r=4 \
    ro.com.google.ime.kb_pad_land_l=64 \
    ro.com.google.ime.kb_pad_land_r=64

# Google Apps
ifneq ($(BUILD_VANILLA), true)
WITH_GMS := true
$(call inherit-product, vendor/gms/products/gms.mk)
endif

# Overlay
PRODUCT_PACKAGES += \
	ANXCameraOverlay

# PixelPropsUtils
PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/common/etc/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml

PRODUCT_PACKAGES += \
	AccentColorBetterYellowOverlay \
	AccentColorBetterRedOverlay \
	AccentColorBetterPinkOverlay \
	AccentColorBetterOrangeOverlay \
	AccentColorBetterGreenOverlay \
	AccentColorBetterBlueOverlay
