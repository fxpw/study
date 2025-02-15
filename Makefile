
m ?= $(shell date +%Y-%m-%d)
c ?= $(shell date +%Y-%m-%d)

ccache:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -exec rm -f {} +
	find . -type f -name "*.pyo" -exec rm -f {} +
# cfiles:
# 	rm -r ./files
r:
	./.venv/bin/pip3.12 install -r requirements.txt
venv:
	python3.12 -m venv .venv
