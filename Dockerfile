FROM fauria/vsftpd:latest
ARG BUILD_DATE
ARG VCS_REF

COPY rootfs /

# Build-time metadata as defined at http://label-schema.org
LABEL org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.name="vsftpd SSL" \
        org.label-schema.description="A vsftpd docker image" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.vcs-url="https://github.com/fsimplice/docker-vsftpd" \
        org.label-schema.vendor="fsimplice" \
        org.label-schema.docker.debug="docker exec -it $CONTAINER /bin/bash"
