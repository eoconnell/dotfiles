.PHONY: dotfiles

dotfiles:

	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".gitmodules" -not -name "*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done;

