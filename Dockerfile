FROM centos
MAINTAINER Anthony Robinson

# deploy exists because bower doesn't like to run as root

RUN cd \
    && useradd deploy \
    && yum install -y epel-release \
    && yum install -y wget npm which git make bzip2 \
    && yum clean all \
    && wget https://nodejs.org/dist/v4.3.0/node-v4.3.0-linux-x64.tar.gz \
    && tar -C /usr --strip-components 1 -xzf node-v4.3.0-linux-x64.tar.gz \
    && rm -f node-v4.3.0-linux-x64.tar.gz \
    && npm install -g npm \
    && npm install -g bower gulp \
    && npm cache clean
