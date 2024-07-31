SHELL := /usr/bin/env bash -euo pipefail -c

.DEFAULT_GOAL := help

.SILENT:

help: # Print help on Makefile
	@grep '^[^.#]\+:\s\+.*#' Makefile | \
	sed "s/\(.\+\):\s*\(.*\) #\s*\(.*\)/`printf "\033[93m"`\1`printf "\033[0m"`	\3 [\2]/" | \
	expand -t 30

install: # Install 'stow' package
	stow --dir ${PWD} --target ${HOME} --dotfiles --verbose stow

uninstall: # Uninstall 'stow' package
	stow --delete --verbose stow
