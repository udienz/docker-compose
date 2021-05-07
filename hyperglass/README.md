# Hyperglass in Docker

This is hyperglass container

## How to run
- install docker-compose
- create hyperglass.yaml, devices.yaml and commands.yaml. Please refer to official documentation
- create ssh private key under ssh directory if you want to use ssh key based
- build the container by executing `docker-compose build`
- run the container by executing `docker-compose up`
- access from browser http://127.0.0.1:8001
