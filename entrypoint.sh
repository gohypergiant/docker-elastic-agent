#! /bin/sh

apt install -y procps

/opt/elastic/elastic-agent install -e -f --kibana-url=${KIBANA_URL} --enrollment-token=${ENROLLMENT_TOKEN} &
sleep infinity
