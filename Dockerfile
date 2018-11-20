FROM amazonlinux:2

# install node and python
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash \
    && yum upgrade -y \
    && yum install -y nodejs python36

# dumb-init
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN pip install dumb-init