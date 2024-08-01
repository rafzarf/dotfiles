pwd := $(shell pwd -LP)
XDG_CONFIG_HOME ?= ${HOME}/.config

.PHONY: all zsh nvim tmux alacritty clean

all: zsh nvim tmux alacritty

zsh:
	@echo "Setting up Zsh configuration..."
	@mkdir -p ${XDG_CONFIG_HOME}/zsh
	@ln -nfs "${pwd}/.zshrc" ${XDG_CONFIG_HOME}/zsh/.zshrc
	@ln -nfs "${pwd}/.p10k.zsh" ${XDG_CONFIG_HOME}/zsh/.p10k.zsh
	# Oh My Zsh should be in the home directory
	@ln -nfs "${pwd}/oh-my-zsh" ${HOME}/.oh-my-zsh
	@mkdir -p ${XDG_CONFIG_HOME}/zsh/custom/plugins
	@ln -nfs "${pwd}/.config/zsh-syntax-highlighting" ${XDG_CONFIG_HOME}/zsh/custom/plugins/zsh-syntax-highlighting
	@ln -nfs "${pwd}/.config/zsh-autosuggestions" ${XDG_CONFIG_HOME}/zsh/custom/plugins/zsh-autosuggestions

nvim:
	@echo "Setting up Neovim configuration..."
	@mkdir -p ${XDG_CONFIG_HOME}/nvim
	@ln -nfs "${pwd}/.config/nvim" ${XDG_CONFIG_HOME}/nvim

tmux:
	@echo "Setting up Tmux configuration..."
	@ln -nfs "${pwd}/.tmux.conf" ${HOME}/.tmux.conf

alacritty:
	@echo "Setting up Alacritty configuration..."
	@mkdir -p ${XDG_CONFIG_HOME}/alacritty
	@ln -nfs "${pwd}/.config/alacritty/alacritty.toml" ${XDG_CONFIG_HOME}/alacritty/alacritty.toml

clean:
	@echo "Cleaning up..."
	@rm -f ${XDG_CONFIG_HOME}/zsh/.zshrc
	@rm -f ${XDG_CONFIG_HOME}/zsh/.p10k.zsh
	@rm -rf ${HOME}/.oh-my-zsh
	@rm -rf ${XDG_CONFIG_HOME}/nvim
	@rm -f ${HOME}/.tmux.conf
	@rm -f ${XDG_CONFIG_HOME}/alacritty/alacritty.toml
	@rm -rf ${XDG_CONFIG_HOME}/zsh/custom/plugins/zsh-syntax-highlighting
	@rm -rf ${XDG_CONFIG_HOME}/zsh/custom/plugins/zsh-autosuggestions

