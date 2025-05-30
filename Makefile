SHELL := /bin/bash

# Makefile

.PHONY: install build deploy dd

install:
	@echo "Installing dependencies..."
	npm ci

deploy: install
	npx hardhat tokamak-uniswap-v3-deploy --network $(BUILDBEAR_RPC_URL)
exe: install deploy
	@echo "All commands executed successfully"


	
