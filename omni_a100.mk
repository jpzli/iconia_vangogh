# Release name
PRODUCT_RELEASE_NAME := A100
ROM_BUILDTYPE := Iconia_Vango

# Inherit from those products. Most specific first.
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

USE_LOWFPS_BOOTANI := true

# Inherit device configuration
$(call inherit-product, device/acer/a100/a100.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := a100
PRODUCT_NAME         := omni_a100
PRODUCT_BRAND        := Acer
PRODUCT_MODEL        := A100
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vangogh \
    BUILD_FINGERPRINT="acer/a100_ww_gen1/omni/vangogh:4.4.4/KTU84P/user/release-keys" \
    PRIVATE_BUILD_DESC="a100_ww_gen1-user 4.4.4 KTU84P release-keys"

PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN

PRODUCT_LOCALES += mdpi
