BRCM_SAI = libsaibcm_3.5.1.1_amd64.deb
$(BRCM_SAI)_URL = "https://sonicstorage.blob.core.windows.net/packages/libsaibcm_3.5.1.1_amd64.deb?sv=2015-04-05&sr=b&sig=ssvwfKFyGbPLzTTs3g%2Bhk7%2FNvziRDnUpqeHVmaDNQGQ%3D&se=2032-12-23T00%3A19%3A05Z&sp=r"

BRCM_SAI_DEV = libsaibcm-dev_3.5.1.1_amd64.deb
$(eval $(call add_derived_package,$(BRCM_SAI),$(BRCM_SAI_DEV)))
$(BRCM_SAI_DEV)_URL = "https://sonicstorage.blob.core.windows.net/packages/libsaibcm-dev_3.5.1.1_amd64.deb?sv=2015-04-05&sr=b&sig=ZX0Qry2r3f2eFOWn%2Ff1Q3UOnz1QtljtFs0vYvl2%2BiEk%3D&se=2032-12-23T00%3A18%3A28Z&sp=r"

SONIC_ONLINE_DEBS += $(BRCM_SAI)
$(BRCM_SAI_DEV)_DEPENDS += $(BRCM_SAI)
