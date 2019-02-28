# Dockerfile for My Home

## Overview

This repository is a place for [my-home-hue](https://github.com/mnrn/my-home-hue) docker file.

## Usage

```
cd /path/my-home-hue-docker
docker build . -t IMAGE_NAME
docker run -d -it --name CONTAINER_NAME IMAGE_NAME
docker cp ENV_FILE_PATH CONTAINER_NAME:/tmp/hue.env
```
