FROM amazonlinux:2

# install node and build tools
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash \
    && yum install -y nodejs