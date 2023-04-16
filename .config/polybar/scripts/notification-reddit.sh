#!/bin/sh

URL="https://www.reddit.com/message/unread/.json?feed=7f7fa06649a315150b9dc26b60838f7d64b83014&user=captainpenguin7"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/captainpenguin7"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "#1 $notifications"
else
    echo "#2"
fi
