#!/bin/bash

repocount=0
while read line; do
	reposync -p /var/www/html/repo/ -r $line
	repocount=$((repocount+1))
done < repos.name
echo "Sync $repocount repository"
