##############################################################
#
# EPAPER CHAR DRIVER
#
##############################################################

EPAPER_MODULE_VERSION = 2f9c5eb7573560949fae39fe075ac1304a45e8d7
EPAPER_MODULE_SITE = git@github.com:cu-ecen-5013/final-project-rahulramaprasad7.git
EPAPER_MODULE_SITE_METHOD = git

EPAPER_MODULE_MODULE_SUBDIRS = module/

$(eval $(kernel-module))
$(eval $(generic-package))

