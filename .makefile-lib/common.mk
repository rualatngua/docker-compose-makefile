include $(ROOT_DIR)/.makefile-lib/variables.mk
-include $(ROOT_DIR)/.make.env

f ?= $(DOCKER_COMPOSE_FILE)
DOCKER_COMPOSE_FILE := $(f)

.DEFAULT_GOAL := help

help: ##@other Show this help.
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

check-dependencies:
	@echo Checking dependencies