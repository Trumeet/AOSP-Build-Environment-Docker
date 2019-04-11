[![Docker Automated build](https://img.shields.io/docker/automated/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment)
[![Docker Build Status](https://img.shields.io/docker/build/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment)
[![Docker Pulls](https://img.shields.io/docker/pulls/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment/)
[![Image Layers](https://img.shields.io/microbadger/layers/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment/)
[![Image Size](https://img.shields.io/microbadger/image-size/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment/)
[![Docker Stars](https://img.shields.io/docker/stars/thnuiwelr/aosp-build-environment.svg)](https://hub.docker.com/r/thnuiwelr/aosp-build-environment/)


# AOSP build environment on Docker
A easy to use AOSP build environment as a Docker image.

# Things to remember
This is an image which provides a **build environment** (includes any tools required for building AOSP), you should use it as a shell, then do anything you wanted. It isn't a wrapper for `Repo`, `Make` or something else.

# Usage
Use it as a independent shell, and mount a local path to save source and result:
```shell
$ docker run --rm -it \
  -v path/to/your/source/folder:/root \ # /root is reccomanded because it's the workdir
  thnuiwelr/aosp-build-environment bash
```
Once you entered the shell, you can start building from [Downloading the Source#Initializing a Repo client](https://source.android.com/setup/build/downloading), every tools required is ready.

You can let it run in background as well, just add your own command and `-d` option:
```shell
$ docker run --rm -it \
  -v path/to/your/source/folder:/root \ # /root is reccomanded because it's the workdir
  -d 
  thnuiwelr/aosp-build-environment "repo --help" # Will be wrapped as "sh -c repo --help"
```
Running in background is pretty useful in long time buildings.

## Building custom ROMs

Some custom ROMs require extra packages to build. Here are the packages I included in the build:

* bc

* imagemagick

* ccache

* schedtool

These packages are included into the image directly.

# License
GPL v3, feel free to contribute it.
