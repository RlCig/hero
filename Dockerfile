FROM centos:latest

WORKDIR /root
RUN yum install -y vim autoconf automake bzip2 bzip2-devel cmake clang gcc gcc-c++ git libtool make mercurial pkgconfig glibc-devel openssh openssh-server libbluray 
 
ADD wstunnel /wstunnel 
ADD init.sh /init.sh
RUN chmod +x /wstunnel 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

CMD bash /init.sh
