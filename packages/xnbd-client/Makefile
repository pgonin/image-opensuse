LINK := https://bitbucket.org/hirofuchi/xnbd/downloads/xnbd-0.3.0.tar.bz2

all: BUILD BUILDROOT RPMS SOURCES SPECS SRPMS SOURCES/xnbd-0.3.0.tar.bz2
	rpmbuild -bb SPECS/xnbd-client.spec


SOURCES/xnbd-0.3.0.tar.bz2:
	wget $(LINK) -O $@


BUILD BUILDROOT RPMS SOURCES SPECS SRPMS:
	mkdir -p $@
