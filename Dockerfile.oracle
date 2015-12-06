FROM yekki/oraclelinux:7.2

# Maintainer
# ----------
MAINTAINER Gary Niu <gary.niu@oracle.com>

# Environment variables required for this build (do NOT change)
ENV JAVA_RPM jdk-8u65-linux-x64.rpm
ENV JAVA_HOME /usr/java/default
ENV CONFIG_JVM_ARGS -Djava.security.egd=file:/dev/./urandom
ENV USER_MEM_ARGS -Xms256m -Xmx512m -XX:MaxPermSize=2048m
ENV JAVA_OPTIONS -XX:+PrintCommandLineFlags

USER root
RUN yum install -y oracle-rdbms-server-12cR1-preinstall
RUN yum update -y; yum clean all

RUN mkdir -p /u01 && chown -R oracle:oinstall /u01 && chmod -R 775 /u01

COPY $JAVA_RPM /u01/
RUN rpm -i /u01/$JAVA_RPM && \ 
    rm /u01/$JAVA_RPM
    
USER oracle
WORKDIR /u01

CMD ["/bin/bash"]