#!/bin/bash

# Status code, ExecutedVersion and (if exists) FunctionError go to
# console, and output (return) of function go to output txt.
aws lambda invoke --function-name sqs-consumer-lambda \
--payload file://consumer-lambda-input.txt consumer-lambda-output.json