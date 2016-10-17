# Bash-for-Linux
scripts
bla bla

smb-autocleanup.sh
----------------
Script for automative cleaning recycle on samba srv. 
``` 
-atime +30 
``` 
mean 30 day-old files will be removed. 


add-users-gen.py
-------------

generate yaml:
```
 - name: username
   authorized:
   - id_rsa_pub/username.pub
```
