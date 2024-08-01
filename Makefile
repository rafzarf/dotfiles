pwd := $(shell pwd -LP)
XDG_CONFIG_HOME ?= ${HOME}/.config

.PHONY: all zsh nvim tmux alacritty catkin

all: zsh nvim tmux alacritty catkin

zsh:
	@ln -nfs "${pwd}/zshrc" ${HOME}/.zshrc

nvim:
	@mkdir -p ${XDG_CONFIG_HOME}/nvim
	@ln -nfs "${pwd}/nvim" ${XDG_CONFIG_HOME}/nvim

tmux:
	@ln -nfs "${pwd}/tmux.conf" ${HOME}/.tmux.conf

alacritty:
	@mkdir -p ${XDG_CONFIG_HOME}/alacritty
	@ln -nfs "${pwd}/alacritty" ${XDG_CONFIG_HOME}/alacritty

catkin:
	@mkdir -p ${HOME}/catkin_ws/src
	@ln -nfs "${pwd}/catkin_src" ${HOME}/catkin_ws/src

clean:
	@rm -f ${HOME}/.zshrc
	@rm -rf ${XDG_CONFIG_HOME}/nvim
	@rm -f ${HOME}/.tmux.conf
	@rm -rf ${XDG_CONFIG_HOME}/alacritty
	@rm -rf ${HOME}/catkin_ws/src
