#! /bin/sh

set -x

/opt/elastic/elastic-agent install -f --kibana-url=${KIBANA_URL} --enrollment-token=${ENROLLMENT_TOKEN}
exec /opt/elastic/elastic-agent
