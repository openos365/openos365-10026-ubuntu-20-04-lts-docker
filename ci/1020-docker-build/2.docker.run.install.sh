#!/usr/bin/env bash
set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

docker pull ubuntu:20.04

docker run -i -v ./:/code -w /code ubuntu:20.04 /code/files/install.sh
