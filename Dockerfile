FROM yekki/oraclelinux:7.2

# Maintainer
# ----------
MAINTAINER Gary Niu <gary.niu@oracle.com>

# Environment variables required for this build (do NOT change)

USER root
RUN echo "root:welcome1" | chpasswd
RUN yum -y groupinstall "X Window System"

# for test purpose
RUN yum -y install xeyes

RUN yum update -y; yum clean all

CMD ["/bin/bash"]