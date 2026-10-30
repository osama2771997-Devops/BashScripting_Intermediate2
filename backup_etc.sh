#!/bin/bash

Backup_Dir="/home/ubuntu/backup"
FileName="etc-backup-$(date +%F).tar.gz"

mkdir -p $Backup_Dir

tar -czf $Backup_Dir/$FileName /etc

echo "Backup completed : $Backup_Dir/$FileName"
