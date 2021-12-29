#!/bin/bash
. ./set-env.sh

aws cloudformation describe-stack-events --stack-name $STACK_NAME