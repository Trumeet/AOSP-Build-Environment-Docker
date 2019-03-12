#!/bin/bash
# To run_install extra tools to build custom ROMs.

run_install() {
	echo "[Script] Install extra tools..."
	apt-get install -y bc imagemagick ccache
}

# For automated builds, "auto" argument will be passed.
if [ "$1" = "auto" ]
then
	echo "[Script] Detecting env"
	echo "[Script] Docker tag: $DOCKER_TAG"
	if [ "$DOCKER_TAG" = "extra-latest" ]
	then
		run_install
	else
		echo "[Script] Skipping"
	fi
else
	run_install
fi
