# Top-level Makefile for Circuit Explorers

# Quick-n-dirty way to determine a version for our project:
# Use "git describe" to derive a version string based on annotated tags.
VERSION := $(shell git describe --first-parent --dirty)

BUILDDIR = ./_build
PAGESDIR = ./_pages
VENVDIR = $(WORKDIR)/_venv

PAGES_BRANCH ?= gh-pages
PAGES_GIT_REMOTE_URL ?= $(shell git config --get remote.origin.url)
ifeq ($(PAGES_GIT_REMOTE_URL),)
$(warning Detecting the git remote URL failed. \
	Publishing to GitHub pages will fail. \
	Ensure you are running inside a git repository, or set \
	$$PAGES_GIT_REMOTE_URL explicitly)
endif

all: docs

include Makefile.venv

# A version of $(MAKE) which runs inside the managed Python virtualenv
MAKE_VENV := . _venv/bin/activate && make

.PHONY: docs
docs: docs-build

.PHONY: docs-build
docs-build: venv
	$(MAKE_VENV) -C docs html

docs-clean:
	make -C docs clean

# Publish docs: Push to a specific branch at the same origin.
# We have configured GitHub Pages to serve this branch,
# see https://stackoverflow.com/questions/15563685/can-i-create-more-than-one-repository-for-github-pages
# for all details.
.PHONY: docs-publish
# Use $(GITPAGES) to run git inside the GH Pages-specific clone from now on.
docs-publish: GITPAGES := git -C $(PAGESDIR)
docs-publish: docs-clean docs-build
# Clone our own repository [use the same remote URL] inside
# a specific subdirectory, $PAGESDIR. We allow this command to fail,
# because the clone may already exist, but we will verify its state
# later on.
	-git clone $(PAGES_GIT_REMOTE_URL) -b $(PAGES_BRANCH) $(PAGESDIR)
# Perform a few sanity checks: Ensure we have detected the remote URL,
# and the cloned repository points to it.
	@test -n "$(PAGES_GIT_REMOTE_URL)" || \
	{ echo "Detecting the git remote URL failed, cannot continue." \
		"Ensure you are running inside a git repository, or set" \
		"\$$PAGES_GIT_REMOTE_URL explicitly" 1>&2; exit 1; }
	@test "$$($(GITPAGES) config --get remote.origin.url)" = "$(PAGES_GIT_REMOTE_URL)" || \
	{ echo Unexpected remote.origin.url in $(PAGESDIR), aborting...; exit 1; }
# Bring the repository to the expected state:
# Fetch everything from the remote, check out the right branch,
# reset the local branch so it matches the remote, and empty the index.
	$(GITPAGES) fetch origin
	$(GITPAGES) checkout $(PAGES_BRANCH)
	$(GITPAGES) reset --hard origin/$(PAGES_BRANCH)
	$(GITPAGES) clean -dfx
	$(GITPAGES) rm -r --ignore-unmatch --quiet .
# Finally, bring out artifacts, and generate a new commit automatically.
	cp -av $(BUILDDIR)/docs/html/. $(PAGESDIR)
	$(GITPAGES) add -A
	$(GITPAGES) commit -s --allow-empty -m "Auto-generated docs for version $(VERSION)"
# We are ready to push everything to the remote. Woo hoo.
	$(GITPAGES) push origin $(PAGES_BRANCH):$(PAGES_BRANCH)
	@echo DOCS-PUBLISH: Successfully published docs to $(PAGES_GIT_REMOTE_URL)


.PHONY: clean
clean: docs-clean

.PHONY: mrproper
mrproper: clean clean-venv
	-$(RMDIR) "$(BUILDDIR)"
