SHELL := /bin/bash

# Makefile

.PHONY: install build deploy dd

install:
	@echo "Installing dependencies..."
	npm ci

deploy: install build
	@echo "Deploying contract…"
	# the $$() is a shell invocation, not a make-variable
	PK=$$(cast wallet private-key "$(MNEMONIC)"); \
	echo "Derived PK: $$PK"; \
	# export it for Hardhat
	PRIVATE_KEY=$$PK npx hardhat tokamak-uniswap-v3-deploy --network buildbear
exe: install build deploy
	@echo "All commands executed successfully"


	
