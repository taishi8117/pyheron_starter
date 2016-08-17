# Makefile for pyheron-starter
#
# Targets:
#  - setup: setup pants for this repo
#  - clean: clean pants

setup:
	curl -L -O https://pantsbuild.github.io/setup/pants && chmod +x pants && touch pants.ini

clean:
	rm pants pants.ini
