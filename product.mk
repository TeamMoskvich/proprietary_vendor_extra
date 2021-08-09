# Google Apps
ifneq ($(BUILD_VANILLA), true)
WITH_GMS := true
$(call inherit-product, vendor/gms/products/gms.mk)
endif

# Overlay
PRODUCT_PACKAGES += \
	SettingsOverlayRR

# Accents
PRODUCT_PACKAGES += \
	AccentColorBetterYellowOverlay \
	AccentColorBetterRedOverlay \
	AccentColorBetterPinkOverlay \
	AccentColorBetterOrangeOverlay \
	AccentColorBetterGreenOverlay \
	AccentColorBetterBlueOverlay
