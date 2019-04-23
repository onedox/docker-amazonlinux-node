FROM ideavate/amazonlinux-node:10

# Install docker
RUN amazon-linux-extras install -y docker

# Install git
RUN yum install -y git

# Install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo \
 && yum install -y yarn

# Install sudo
RUN yum install -y sudo

# Setup non-root user for build, but allow sudo
RUN useradd -m builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
WORKDIR /home/builder
USER builder
