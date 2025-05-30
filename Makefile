SHELL := /bin/bash

# Makefile

.PHONY: install build deploy dd

install:
	@echo "Installing dependencies..."
	npm ci

deploy: install build
	@echo "Deploying contract..."
	PRIVATE_KEY := $(shell cast wallet private-key "$(MNEMONIC)")
	npx hardhat tokamak-uniswap-v3-deploy --network $(BUILDBEAR_RPC_URL)
exe: install build deploy
	@echo "All commands executed successfully"


	
