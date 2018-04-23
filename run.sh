#!/usr/bin/env sh

image=${REPO:-local}/${IMAGE:-vsftpd}:${TAG:-latest}
echo "Running image ${image}"

docker run --rm --name  local_vsftpd_latest -it  ${image} /bin/sh
