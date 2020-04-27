
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
EINKAPP_VERSION =  35e36b425aed8d29fd196fdc8f5731e1ca8ddffb
EINKAPP_SITE = git@github.com:cu-ecen-5013/final-project-rahulramaprasad7.git
EINKAPP_SITE_METHOD = git


define EINKAPP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define EINKAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/mqueue_test/rx $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/mqueue_test/tx $(TARGET_DIR)/bin
	
endef


$(eval $(generic-package))
