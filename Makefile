.PHONY: dotfiles

dotfiles:

	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".gitmodules" -not -name "*.swp" ! -path .); do \
		f=$$(basename $$file); \
		ln --symbolic --force --no-dereference $$file $(HOME)/$$f; \
	done;

