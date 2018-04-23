#!/usr/bin/env sh

image=${REPO:-local}/${IMAGE:-vsftpd}:${TAG:-latest}

echo "Using BUILD_OPTS=${BUILD_OPTS}"
echo "Building ${image}"

docker build \
    --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
    --build-arg VCS_REF=`git rev-parse --short HEAD` \
    ${BUILD_OPTS} . -t ${image}
