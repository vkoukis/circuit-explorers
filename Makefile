# Top-level Makefile for Circuit Explorers

all: docs

.PHONY: docs
docs: docs-build

.PHONY: docs-build
docs-build:
	make -C docs html

docs-clean:
	make -C docs clean

.PHONY: clean
clean: docs-clean
