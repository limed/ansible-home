#!/bin/bash
# Simple backup script to backup files to s3
# Requires aws package to be installed

set -eu

backup_path="/srv/blackbox/Volume_1/backups/"
s3_remote_bucket="limed-sudoers-backupbucket"

# first things first delete all the cruft
find ${backup_path} -name '*.DS_Store' -type f -delete
aws s3 sync ${backup_path} s3://${s3_remote_bucket} --delete --quiet
