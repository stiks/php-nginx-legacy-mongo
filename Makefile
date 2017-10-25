ARGS = $(filter-out $@,$(MAKECMDGOALS))
MAKEFLAGS += --silent

# Set dir of Makefile to a variable to use later
MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

help:
	echo "Please use some kind of command"

#############################
# General
#############################

build:
	docker build . -t stiks/php-nginx-legacy-mongo

push: build
	docker push stiks/php-nginx-legacy-mongo

clean:
	docker rmi $(shell docker images -q) -f

#############################
# Argument fix workaround
#############################
%:
	@:
