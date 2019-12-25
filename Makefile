
.PHONY: bin
bin:

	for file in $(shell find $(CURDIR)/bin -type f -not -name "*.swp"); do \
		f=$$(basename $$file); \
		sudo ln --symbolic --force $$file /usr/local/bin/$$f; \
	done;

.PHONY: config
config:

	for file in $(shell find $(CURDIR)/config/* -maxdepth 0 -type d); do \
		f=$$(basename $$file); \
		ln --symbolic --force --no-dereference $$file $(HOME)/.config/$$f; \
	done;

.PHONY: dotfiles
dotfiles:

	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".gitmodules" -not -name "*.swp" ! -path $(CURDIR)); do \
		f=$$(basename $$file); \
		ln --symbolic --force --no-dereference $$file $(HOME)/$$f; \
	done;

.PHONY: uninstall
uninstall:

	for file in $(shell find -L $(HOME) -xtype l); do \
		d=$$(readlink $$file | xargs dirname); \
		if [ $$d = $(CURDIR) ]; then \
			unlink $$file; \
		fi \
	done;

.PHONY: test
test: shellcheck

# if this session isn't interactive, then we don't want to allocate a
# TTY, which would fail, but if it is interactive, we do want to attach
# so that the user can send e.g. ^C through.
INTERACTIVE := $(shell [ -t 0 ] && echo 1 || echo 0)
ifeq ($(INTERACTIVE), 1)
	DOCKER_FLAGS += -t
endif

.PHONY: shellcheck
shellcheck:

	docker run --rm -i $(DOCKER_FLAGS) \
             --name dot-shellcheck \
             -v $(CURDIR):/usr/src:ro \
             --workdir /usr/src \
             r.j3ss.co/shellcheck ./test.sh
