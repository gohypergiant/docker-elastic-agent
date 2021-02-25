#! /bin/sh

set -x

/opt/elastic/elastic-agent install
exec /opt/elastic/elastic-agent && /opt/elastic/elastic-agent enroll ${KIBANA_URL} ${ENROLLMENT_TOKEN}
