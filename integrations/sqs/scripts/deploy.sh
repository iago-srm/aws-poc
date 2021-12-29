#!/bin/bash
. ./set-env.sh

aws cloudformation package \
  --template-file ../index.yaml \
  --s3-bucket $DEPLOY_BUCKET \
  --output-template-file packaged.yaml \
  --profile $AWS_PROFILE
  
aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --template-file packaged.yaml \
  --capabilities CAPABILITY_IAM \
  --profile $AWS_PROFILE \

#   --parameter-overrides Param=Value \