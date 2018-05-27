
.PHONY: bin
bin:

	for file in $(shell find $(CURDIR)/bin -type f -not -name "*.swp"); do \
		f=$$(basename $$file); \
		sudo ln --symbolic --force $$file /usr/local/bin/$$f; \
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
