# Created on Sun Aug 14 2022
# Copyright (c) 2022 - xinz@88.com

SHELL				:= bash

FEATURES			?=


LIBS				:=
BINS				:=

export LIB_DIRS		:= ${LIBS}

export BIN_DIRS		:= ${BINS}

.PHONY: all

all: build

build-libs:
	@$(SHELL) build lib

build-bins:
	@$(SHELL) build bin

build: build-libs build-bins

clean-libs:
	@$(SHELL) clean lib

clean-bins:
	@$(SHELL) clean bin

clean: clean-libs clean-bins
