#!/bin/bash
. ./set-env.sh
aws s3 mb s3://$DEPLOY_BUCKET --profile $AWS_PROFILE