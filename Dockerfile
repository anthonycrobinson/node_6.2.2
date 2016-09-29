FROM centos
MAINTAINER Anthony Robinson

RUN yum install -y epel-release \
    && yum install -y wget which git make bzip2 fontconfig \
    && yum clean all \
    && wget https://nodejs.org/dist/v6.2.2/node-v6.2.2-linux-x64.tar.gz \
    && tar -C /usr --strip-components 1 -xzf node-v6.2.2-linux-x64.tar.gz \
    && rm -f node-v6.2.2-linux-x64.tar.gz \
    && npm install -g npm \
    && npm cache clean
