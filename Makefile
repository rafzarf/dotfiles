pwd := $(shell pwd -LP)
.PHONY: bash
all: bash
bash:
	@ln -nfs "${pwd}/bashrc" ~/.bashrc
	@ln -nfs "${pwd}/zshrc" ~/.zhsrc
