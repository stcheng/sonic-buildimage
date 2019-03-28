# docker image for orchagent

DOCKER_ORCHAGENT_BRCM = docker-orchagent-brcm.gz
$(DOCKER_ORCHAGENT_BRCM)_PATH = $(DOCKERS_PATH)/docker-orchagent
$(DOCKER_ORCHAGENT_BRCM)_DEPENDS += $(SWSS) $(REDIS_TOOLS) $(IPROUTE2)
ifeq ($(INSTALL_DEBUG_TOOLS), y)
$(DOCKER_ORCHAGENT_BRCM)_DEPENDS += $(SWSS_DBG) \
                                    $(LIBSWSSCOMMON_DBG) \
                                    $(LIBSAIREDIS_DBG)
endif
$(DOCKER_ORCHAGENT_BRCM)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE_STRETCH)
SONIC_STRETCH_DOCKERS += $(DOCKER_ORCHAGENT_BRCM)
SONIC_DOCKER_IMAGES += $(DOCKER_ORCHAGENT_BRCM)
SONIC_INSTALL_DOCKER_IMAGES += $(DOCKER_ORCHAGENT_BRCM)

$(DOCKER_ORCHAGENT_BRCM)_CONTAINER_NAME = swss
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += --net=host --privileged -t
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += -v /etc/network/interfaces:/etc/network/interfaces:ro
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += -v /etc/network/interfaces.d/:/etc/network/interfaces.d/:ro
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += -v /host/machine.conf:/host/machine.conf:ro
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_ORCHAGENT_BRCM)_RUN_OPT += -v /var/log/swss:/var/log/swss:rw

$(DOCKER_ORCHAGENT_BRCM)_BASE_IMAGE_FILES += swssloglevel:/usr/bin/swssloglevel
$(DOCKER_ORCHAGENT_BRCM)_FILES += $(ARP_UPDATE_SCRIPT)
