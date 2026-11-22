# Project 19: Scheduled S3 Backup

## Objective
Automate Linux log backups to AWS S3 using cron jobs.

## Technologies Used
- Ubuntu 24.04
- AWS CLI
- Amazon S3
- Linux Cron
- Bash scripting

## S3 Bucket
mb-project19-scheduled-backup-2026

## Backup Script
The backup.sh script uploads log files to S3
inside timestamped backup folders.

## Cron Schedule
0 * * * *

Backups execute automatically every hour.

## Verification
aws s3 ls s3://mb-project19-scheduled-backup-2026/backups/ --recursive

## Result
Successfully automated Linux log backups
to Amazon S3 using cron and AWS CLI.
