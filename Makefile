pwd := $(shell pwd -LP)
XDG_CONFIG_HOME ?= ${HOME}/.config

.PHONY: all zsh nvim tmux alacritty catkin

all: zsh nvim tmux alacritty catkin

zsh:
	@ln -nfs "${pwd}/zshrc" ${HOME}/.zshrc
	@ln -nfs "${pwd}/p10k.zsh" ${HOME}/.p10k.zsh
	@ln -nfs "${pwd}/oh-my-zsh" ${HOME}/.oh-my-zsh
	@mkdir -p ${HOME}/.oh-my-zsh/custom/plugins
	@ln -nfs "${pwd}/zsh-syntax-highlighting" ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@ln -nfs "${pwd}/zsh-autosuggestions" ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions

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
	@rm -f ${HOME}/.p10k.zsh
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -rf ${XDG_CONFIG_HOME}/nvim
	@rm -f ${HOME}/.tmux.conf
	@rm -rf ${XDG_CONFIG_HOME}/alacritty
	@rm -rf ${HOME}/catkin_ws/src
