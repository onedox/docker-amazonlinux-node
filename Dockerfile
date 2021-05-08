FROM ideavate/amazonlinux-node:16

RUN yum update -y

# Install aws tools
RUN yum install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install awsebcli awscli --upgrade

# Install docker
RUN amazon-linux-extras install -y docker

# Install git, sudo, tar, bzip2
RUN yum install -y git sudo tar bzip2

# Install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo \
  && yum install -y yarn

# Setup non-root user for build, but allow sudo and docker
RUN useradd -m -g docker builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
RUN chmod a=rwx -R /home/builder
WORKDIR /home/builder
USER builder
