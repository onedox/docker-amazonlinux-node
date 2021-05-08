FROM ideavate/amazonlinux:2

# install node
RUN curl --silent --location https://rpm.nodesource.com/setup_16.x | bash \
  && yum upgrade -y \
  && yum install -y nodejs