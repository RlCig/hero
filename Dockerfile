FROM centos:latest
RUN yum install -y curl wget unzip vim autoconf automake bzip2 bzip2-devel cmake clang gcc gcc-c++ git libtool make mercurial pkgconfig glibc-devel openssh openssh-server libbluray 
ADD init.sh ./init.sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
CMD bash /init.sh
