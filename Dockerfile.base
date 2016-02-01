FROM scratch
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
ADD oraclelinux-7.2.tar.xz /

USER root
RUN echo "root:welcome1" | chpasswd

# overwrite this with 'CMD []' in a dependent Dockerfile
CMD ["/bin/bash"]