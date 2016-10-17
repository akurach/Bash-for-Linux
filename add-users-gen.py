import sys

filepath = '/Users/sundelor/git/all/scrips/userlist.txt'
with open(filepath) as file:
    users = file.readlines()

for user in users:
    user = user.replace('\n','')
    print '''
        - name: %s
          authorized:
          - id_rsa_pub/%s.pub
    ''' %(user, user)
