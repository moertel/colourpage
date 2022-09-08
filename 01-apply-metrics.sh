#!/bin/sh

custom_attributes=""
if [ -n "${CUSTOM_ATTRIBUTE_ENV_VARIABLE_NAME}" ]
then
    custom_attribute_name="${CUSTOM_ATTRIBUTE_ENV_VARIABLE_NAME}"
    custom_attribute_value=$(printenv | grep "${custom_attribute_name}=" | awk -F'=' '{print $2}')
    custom_attributes=',"'"${custom_attribute_name}"'":"'"${custom_attribute_value}"'"'
fi

sed 's@###COLOUR###@'"${COLOUR}"'@g; s@###CUSTOM_ATTRIBUTES###@'"$custom_attributes"'@g; s@###NEWRELIC_LICENSE_KEY###@'"${NEWRELIC_LICENSE_KEY}"'@g; s@###METRIC###@'"${METRIC}"'@g' /tmp/metrics.sh > /opt/metrics.sh
