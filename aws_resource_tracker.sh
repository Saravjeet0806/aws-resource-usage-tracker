#!/bin/bash

###########################
# Author: Saravjeet Singh
# Date: 24th-June
#
# Version v1
#
# This script will report the AWS resource usage
###########################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x
# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resources_tracker_report

# list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resources_tracker_report

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resources_tracker_report

# list IAM Users
echo "Print list of IAM Users"
aws iam list-users >> resources_tracker_report
~
~
~
~
~
