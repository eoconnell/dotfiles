.PHONY: install
install:
	stow bash
	stow coc.nvim --no-folding
	stow compton
	stow fonts
	stow git
	stow i3
	stow nvim
	stow rofi
	stow screen
	stow scripts
	stow tmux
	stow urxvt
	stow vim
	stow wezterm
	stow xorg
	stow zsh

.PHONY: uninstall
uninstall:
	stow -D bash
	stow -D coc.nvim
	stow -D compton
	stow -D fonts
	stow -D git
	stow -D i3
	stow -D nvim
	stow -D rofi
	stow -D screen
	stow -D scripts
	stow -D tmux
	stow -D urxvt
	stow -D vim
	stow -D wezterm
	stow -D xorg
	stow -D zsh

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
