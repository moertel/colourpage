#!/bin/sh

curl -k -H "Content-Type: application/json" \
-H "Api-Key: ###NEWRELIC_LICENSE_KEY###" \
-X POST https://metric-api.newrelic.com/metric/v1 \
--data '[{
    "metrics":[{
       "name":"dummy",
       "type":"gauge",
       "value":###METRIC###,
       "timestamp":'$(date +%s)',
       "attributes":{"colour":"###COLOUR###"###CUSTOM_ATTRIBUTES###}
       }]
}]'
