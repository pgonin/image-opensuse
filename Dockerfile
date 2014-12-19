
## -*- docker-image-name: "armbuild/ocs-distrib-opensuse:13.2" -*-
FROM armbuild/opensuse-disk:13.2
MAINTAINER Online Labs <opensource@ocs.online.net>


# Environment
ENV OCS_BASE_IMAGE armbuild/ocs-distrib-opensuse:13.2


# Patch rootfs
RUN wget -qO - http://j.mp/ocs-scripts | bash
ADD ./patches/etc/ /etc/
#ADD ./patches/usr/ /usr/

# TEMPORARY DEBUG ACCESS
RUN echo root:toor2 | chpasswd
RUN umask 077; mkdir /root/.ssh; echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEApvPvDbWDY50Lsx4WyUInw407379iERte63OTTNae6+JgAeYsn52Z43Oeks/2qC0gxweq+sRY9ccqhfReie+r+mvl756T4G8lxX1ND8m6lZ9kM30Rvk0piZn3scF45spmLNzCNXza/Hagxy53P82ej2vq2ewXtjVdvW20G3cMHVLkcdgKJN+2s+UkSYlASW6enUj3no+bukT+6M8lJtlT0/0mZtnBRJtqCCvF0cm9xU0uxILrhIfdYAJ1XqaoqIQLFSDLVo5lILMzDNwV+CfAotRMWIKvWomCszhVQYHCQo2Z+b2Gs0TL4DRb23fRMdeaRufnVhh5ZMlNkb2ajaL6sw== m" >> /root/.ssh/authorized_keys ; echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDYQAd3JDHyDnlojqmKlVgoHYEawYKS6NIq1y81PauHPn6v8lHGSjEkcPhl1kf39+dze/NmoLEGowyjpYH6Tc7XJ1z4FQDtgdAMCL5n+cBwd1H1MFAIbFJAtLsno5HUIbO6fhUKx6nKrdUodakPS7yBiCLDUT7uuxX12WhtJAJUlNJj9Cd3o2kWYYfF12AVA0dfT8Rzsbr5JA2IRlrasyisDJxQQ00T6SWEVaJRwPFK7Ipcrqrw+XeYOAeq2Mx8/25ybsbwjXaP6N+R6xCD7Wq0JoiYpzx/qE0lD3JQShQNYPbYfYkKWoVwibKk/W3Xy1QtrPdwUXET+0SssqDxdGHt"  >> /root/.ssh/authorized_keys
