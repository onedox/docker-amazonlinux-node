FROM ideavate/amazonlinux-node:12

# Include more serverless plugins than are actually needed for production
RUN npm install -g \
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
  serverless-dynamodb-local
