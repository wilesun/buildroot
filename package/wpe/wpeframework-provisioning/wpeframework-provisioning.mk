################################################################################
#
# wpeframework-provisioning
#
################################################################################

WPEFRAMEWORK_PROVISIONING_VERSION = a51b9cbd7825b05d758c121419f49f0e819b0fde
WPEFRAMEWORK_PROVISIONING_SITE_METHOD = git
WPEFRAMEWORK_PROVISIONING_SITE = git@github.com:WebPlatformForEmbedded/WPEPluginProvisioning.git
WPEFRAMEWORK_PROVISIONING_INSTALL_STAGING = YES
WPEFRAMEWORK_PROVISIONING_DEPENDENCIES = wpeframework libprovision

WPEFRAMEWORK_PROVISIONING_CONF_OPTS += -DBUILD_REFERENCE=${WPEFRAMEWORK_PROVISIONING_VERSION}

WPEFRAMEWORK_PROVISIONING_CONF_OPTS += -DWPEFRAMEWORK_PROVISIONING_URI=${BR2_PACKAGE_WPEFRAMEWORK_PROVISIONING_URI}
WPEFRAMEWORK_PROVISIONING_CONF_OPTS += -DPLUGIN_PROVISIONING_OPERATOR=${BR2_PACKAGE_WPEFRAMEWORK_PROVISIONING_OPERATOR}

ifeq ($(BR2_PACKAGE_WPEFRAMEWORK_PROVISIONING_BLOBWRITER),y)
WPEFRAMEWORK_PROVISIONING_CONF_OPTS += -DPLUGIN_BLOBWRITER=ON
endif

$(eval $(cmake-package))
