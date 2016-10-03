#!/bin/bash
yum makecache fast
repocount=0
while read line
  do
    reposync --gpgcheck -l --repoid=$line --download_path=/home/repo/ --downloadcomps --download-metadata
#    reposync -p /var/www/html/repo/ -r $line
    repocount=$((repocount+1))
    createrepo -v /var/www/html/repo/$line
  done < repos.name

echo "Sync $repocount repository"
