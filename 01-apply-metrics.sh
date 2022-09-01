#!/bin/sh

sed 's@###COLOUR###@'"${COLOUR}"'@g; s@###NEWRELIC_LICENSE_KEY###@'"${NEWRELIC_LICENSE_KEY}"'@g; s@###METRIC###@'"${METRIC}"'@g' /tmp/metrics.sh > /opt/metrics.sh
