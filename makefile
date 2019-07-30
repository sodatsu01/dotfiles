CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git 
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

all:

list: ## Show dot files in this repo
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

deploy: ## Create symlink to home directory
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
