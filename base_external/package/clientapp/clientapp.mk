
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CLIENTAPP_VERSION =  6534e2b4007ab724a1f9603ad74e91faa0aa3135
CLIENTAPP_SITE = git@github.com:cu-ecen-5013/final-project-rahulramaprasad7.git
CLIENTAPP_SITE_METHOD = git


define CLIENTAPP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define CLIENTAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client $(TARGET_DIR)/bin
	
endef


$(eval $(generic-package))
