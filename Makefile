# Makefile for pyheron-starter
#
# Targets:
#  - setup: setup pants for this repo
#  - build: build example word count topology
#  - clean: clean pants

all: build

setup:
	curl -L -O https://pantsbuild.github.io/setup/pants && chmod +x pants && touch pants.ini
	cp pyheron/.requirements.txt.original pyheron/requirements.txt
	sed -i '' -e '1 s@\-f .*@-f '"${PWD}"'/pyheron@g' pyheron/requirements.txt

build: setup
	./pants binary :word_count


clean:
	rm -rf dist/ pants* .pants* .cache pyheron/requirements.txt

.PHONY: all setup build clean
