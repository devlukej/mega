#! /bin/bash

USERNAME=${USERNAME:-user}
PASSWORD=${PASSWORD:-user}
GIT=${GIT}
TOKEN=${TOKEN}

git clone https://$GIT:$TOKEN@github.com/devlukej/project.git

mv project /home/user/project

echo "jj"

useradd -s /bin/bash -m $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd

/usr/sbin/sshd -D -e