FROM centos:latest

RUN rm -rf /bin/sh && ln -sf /bin/bash /bin/sh
RUN yum install -y curl wget unzip vim autoconf automake bzip2 bzip2-devel cmake clang gcc gcc-c++ git libtool make mercurial pkgconfig glibc-devel openssh openssh-server libbluray 
ADD init.sh /home

USER whatever_heroku_will_rename_it
WORKDIR /home
CMD bash ./init.sh
