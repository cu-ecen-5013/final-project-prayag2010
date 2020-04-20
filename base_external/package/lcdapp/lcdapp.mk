
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCDAPP_VERSION = f5299684edfcb625dbe130a9da374182fe723816
LCDAPP_SITE = git@github.com:cu-ecen-5013/final-project-sharanaru.git
LCDAPP_SITE_METHOD = git


define LCDAPP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define LCDAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/server $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/controlscript $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
