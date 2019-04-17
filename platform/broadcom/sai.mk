BRCM_SAI = libsaibcm_3.5.1.1_amd64.deb
$(BRCM_SAI)_URL = "https://sonicstorage.blob.core.windows.net/packages/libsaibcm_3.5.1.1_amd64.deb?sv=2015-04-05&sr=b&sig=CN%2FiUCbfnQ6BurhfxsnNolE8exFizhiZPrRUpQo6WPk%3D&se=2032-12-24T08%3A39%3A47Z&sp=r"

BRCM_SAI_DEV = libsaibcm-dev_3.5.1.1_amd64.deb
$(eval $(call add_derived_package,$(BRCM_SAI),$(BRCM_SAI_DEV)))
$(BRCM_SAI_DEV)_URL = "https://sonicstorage.blob.core.windows.net/packages/libsaibcm-dev_3.5.1.1_amd64.deb?sv=2015-04-05&sr=b&sig=cjamCSm%2FjRc%2BeFBK0fTnvqRX9B79Hv6znUn9r3YK9iw%3D&se=2032-12-24T08%3A40%3A26Z&sp=r"

SONIC_ONLINE_DEBS += $(BRCM_SAI)
$(BRCM_SAI_DEV)_DEPENDS += $(BRCM_SAI)
