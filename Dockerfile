
## -*- docker-image-name: "armbuild/ocs-distrib-opensuse:13.2" -*-
FROM armbuild/opensuse-disk:13.2
MAINTAINER Online Labs <opensource@ocs.online.net>


# Environment
ENV OCS_BASE_IMAGE armbuild/ocs-distrib-opensuse:13.2


# Patch rootfs
RUN wget -qO - http://j.mp/ocs-scripts | bash
ADD ./patches/etc/ /etc/
#ADD ./patches/usr/ /usr/
