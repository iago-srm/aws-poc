#!/bin/bash
#dates as yyyy-mm-dd
aws ce get-cost-and-usage --time-period Start=2021-12-27,End=2022-01-01 \
--granularity=MONTHLY --metrics BlendedCost \
--group-by Type=DIMENSION,Key=SERVICE