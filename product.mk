# Google Apps
ifneq ($(BUILD_VANILLA), true)
WITH_GMS := true
$(call inherit-product, vendor/gms/products/gms.mk)
endif

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
