SHELL := /bin/bash

# Makefile

.PHONY: install build deploy dd

install:
	@echo "Installing dependencies..."
	npm install

deploy: install build
	@echo "Deploying contract..."
	npx hardhat tokamak-uniswap-v3-deploy --network $(BUILDBEAR_RPC_URL)
exe: install build deploy
	@echo "All commands executed successfully"


	
