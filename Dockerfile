FROM ideavate/amazonlinux-node:12

# Install docker-cli
RUN yum install -y yum-utils \
 && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
 && yum install -y docker-ce-cli

# Install git
RUN yum install -y git

# Install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo \
 && yum install -y yarn

# Install sudo
RUN yum install -y sudo

# Setup non-root user for build, but allow sudo and docker
RUN useradd -m -g docker builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
WORKDIR /home/builder
USER builder
