.PHONY: build
.DEFAULT_GOAL := help

venv: ## Create virtualenv and install pip-tools
	python3 -m venv venv
	venv/bin/pip3 install pip-tools

requirements.txt: requirements.in ## Generate requirements.txt file
	venv/bin/pip-compile -o requirements.txt --no-header --no-annotate requirements.in

build: venv requirements.txt ## Sync virtual environment with dependencies
	venv/bin/pip-sync
