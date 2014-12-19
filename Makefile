DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-opensuse
VERSION =		13.2
VERSION_ALIASES =	latest
TITLE =			Opensuse 13.2
DESCRIPTION =		Opensuse 13.2
SOURCE_URL =		https://github.com/online-labs/image-opensuse


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
