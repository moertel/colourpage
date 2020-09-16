#!/bin/sh

sed 's@###COLOUR###@'"${COLOUR}"'@g' /tmp/index.html > /usr/share/nginx/html/index.html
