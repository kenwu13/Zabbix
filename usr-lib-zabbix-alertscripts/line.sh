#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# LINE Notify Token - Media > "Send to".
TOKEN="$1"

# {ALERT.SUBJECT}
subject="$2"

# {ALERT.MESSAGE}
message="$3"

curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "message=${message}" https://notify-api.line.me/api/notify
