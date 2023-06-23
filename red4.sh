#!/bin/bash



# setup
echo "URL:" ; read
URL=$REPLY

which 403-bypass.sh || echo "PATH to 403 bypass:" ; read
PATH=$PATH:$REPLY

gobuster --exclude-length 134 -w /usr/share/wordlists/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt
-u $URL

which 403-bypass.sh || echo "Nope." ; exit 2

for i in `cat files.txt`
do
## do things
  403-bypass.sh --exploit -u $URL
done

