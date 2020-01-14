FROM ideavate/amazonlinux-node:10

RUN yum install -y tar gzip bzip2 zip

WORKDIR /serverless

# Include more serverless plugins than are actually needed for production
RUN npm install \
  serverless \
  serverless-offline \
  serverless-prune-plugin \
  serverless-plugin-warmup \
  serverless-domain-manager \
  serverless-apigw-binary \
  serverless-content-encoding \
  serverless-plugin-include-dependencies \
  serverless-finch \
  serverless-dynamodb-autoscaling \
  serverless-dynamodb-local \
  serverless-plugin-additional-stacks

ENV PATH="/serverless/node_modules/.bin:${PATH}"
