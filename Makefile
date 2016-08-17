# Makefile for pyheron-starter
#
# Targets:
#  - setup: setup pants for this repo
#  - clean: clean pants

setup:
	curl -L -O https://pantsbuild.github.io/setup/pants && chmod +x pants && touch pants.ini
	cp pyheron/.requirements.txt.original pyheron/requirements.txt
	sed -i '' -e '1 s@\-f .*@-f '"${PWD}"'/3rdparty@g' pyheron/requirements.txt

clean:
	rm -rf dist/ pants* .pants* .cache pyheron/requirements.txt
