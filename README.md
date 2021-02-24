# docker-elastic-agent
A Dockerized build of the Elastic Agent

[![Hypergiant](https://i.imgur.com/cLjriJj.jpg)](https://www.hypergiant.com/)


## Using this image

This image assumes you have a working Elastic Search and Kibana deployment and are using [Fleet](https://www.elastic.co/guide/en/fleet/current/fleet-overview.html) to manage your [Elastic Agents](https://www.elastic.co/guide/en/fleet/current/elastic-agent-installation-configuration.html).

The image registers a new agent at startup using the `KIBANA_URL` and `ENROLLMENT_TOKEN` environment variables.

`docker run -d -it -e KIBANA_URL=http://example.com -e ENROLLMENT_TOKEN=aaaabbbbccccdddd ghcr.io/gohypergiant/docker-elastic-agent:v7.11.1`

## Who maintains this image?

This image is maintained by the Hypergiant Infrastructure Engineering Team.

## How is this image versioned?

The tags on this image track tags from the upstream Elastic Agent and will match accordingly.

## Contributing

See our [Contributing Guidelines](contributing.md).

## License

This repository is licensed under [Apache 2.0](LICENSE.md).

