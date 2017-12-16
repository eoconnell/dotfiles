.PHONY: dotfiles uninstall

dotfiles:

	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".gitmodules" -not -name "*.swp" ! -path $(CURDIR)); do \
		f=$$(basename $$file); \
		ln --symbolic --force --no-dereference $$file $(HOME)/$$f; \
	done;

uninstall:

	for file in $(shell find -L $(HOME) -xtype l); do \
		d=$$(readlink $$file | xargs dirname); \
		if [ $$d == $(CURDIR) ]; then \
			unlink $$file; \
		fi \
	done;
