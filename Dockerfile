FROM debian:bullseye-slim

ARG AGENT_VERSION="7.11.1"

WORKDIR /tmp/elastic/
RUN apt update && apt install -y curl
RUN curl -o elastic-agent.tgz https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-${AGENT_VERSION}-linux-x86_64.tar.gz
RUN tar -xf elastic-agent.tgz
RUN mv elastic-agent-${AGENT_VERSION}-linux-x86_64 /opt/elastic/

WORKDIR /
COPY entrypoint.sh .

ENTRYPOINT ./entrypoint.sh
