##############################################################
#
# EPAPER CHAR DRIVER
#
##############################################################

EPAPER_MODULE_VERSION = '056b31123688fb7b2fdd1793e6a142736bc41260'
EPAPER_MODULE_SITE = 'git@github.com:prayag2010/ECEN5013-LCD-Communication.git'
EPAPER_MODULE_SITE_METHOD = git

EPAPER_MODULE_MODULE_SUBDIRS = module/

$(eval $(kernel-module))
$(eval $(generic-package))

