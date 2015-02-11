Official Opensuse image on Online Labs [![Build Status](https://travis-ci.org/online-labs/image-opensuse.svg?branch=master)](https://travis-ci.org/online-labs/image-opensuse)
======================================

**Warning: this is image is not yet working**

Scripts to build the official Opensuse image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the [armbuild/opensuse-disk](https://registry.hub.docker.com/u/armbuild/opensuse-disk/) Docker image.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://doc.cloud.online.net/howto/create_image.html))

    $ make install

Full list of commands available at: [online-labs/image-tools](https://github.com/online-labs/image-tools/tree/master#commands)

---

Community discussions:
----------------------

- [New Linux Distributions](https://community.cloud.online.net/t/official-new-linux-distributions-debian-coreos-centos-fedora-arch-linux/229)
