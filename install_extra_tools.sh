#!/bin/bash
# To run_install extra tools to build custom ROMs.

run_install() {
	echo "Install extra tools..."
	apt-get install -y bc imagemagick ccache
}

# For automated builds, "auto" argument will be passed.
if [ "$1" = "auto" ]
then
	if [ "$DOCKER_TAG" = "extra-latest" ]
	then
		run_install
	fi
else
	run_install
fi
