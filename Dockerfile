FROM ideavate/amazonlinux:2-di

# install node
RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash \
 && yum upgrade -y \
 && yum install -y nodejs