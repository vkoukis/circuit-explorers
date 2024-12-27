# Top-level Makefile for Circuit Explorers

MAKE_VENV := . _venv/bin/activate && make

all: docs

.PHONY: docs
docs: docs-build

.PHONY: docs-build
docs-build: venv
	$(MAKE_VENV) -C docs html

docs-clean:
	make -C docs clean

.PHONY: clean
clean: docs-clean

.PHONY: mrproper
mrproper: clean clean-venv

VENVDIR = $(WORKDIR)/_venv
include Makefile.venv
