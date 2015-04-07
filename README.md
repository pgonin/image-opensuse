OpenSUSE image on Scaleway [![Build Status](https://travis-ci.org/scaleway/image-opensuse.svg?branch=master)](https://travis-ci.org/scaleway/image-opensuse)
==========================

**Warning: this is image is not yet working**

Scripts to build the official Opensuse image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the [armbuild/opensuse-disk](https://registry.hub.docker.com/u/armbuild/opensuse-disk/) Docker image.

<img src="http://upload.wikimedia.org/wikipedia/en/9/98/OpenSUSE_official-logo-color.svg" width="300px" />

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools#docker-based-builder)

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create_an_image_with_docker))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)

---

Community discussions:
----------------------

- [New Linux Distributions](https://community.cloud.online.net/t/official-new-linux-distributions-debian-coreos-centos-fedora-arch-linux/229)

---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)
