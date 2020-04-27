
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SCAPP_VERSION =  d4f60b2a85d7b16d7c7fcb700296d5b36c4363b8
SCAPP_SITE = git@github.com:cu-ecen-5013/final-project-sharanaru.git
SCAPP_SITE_METHOD = git


define SCAPP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define SCAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/server $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/controlscript $(TARGET_DIR)/bin
	
endef


$(eval $(generic-package))
