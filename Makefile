SHELL := /bin/bash

# Makefile

.PHONY: install deploy dd

install:
	@echo "Installing dependencies..."
	npm ci

deploy: install
	npx hardhat tokamak-uniswap-v3-deploy --network buildbear
exe: install deploy
	@echo "All commands executed successfully"


	
