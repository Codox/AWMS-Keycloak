
# AWMS Hyperlogic: Keycloak

This repository holds the configuration and Docker images to configure Keycloak for the AWMS Hyperlogic service.

There are **2** images associated with this repository:

- **awms-hyperlogic-keycloak**: The Keycloak server
- **awms-hyperlogic-keycloak-cli**: The CLI tool responsible for applying configurations to Keycloak between version updates
## Installation
TBA


## Misc Notes

- docker build -t mytest -f docker/Dockerfile.keycloak-cli .
- docker run -it -e KEYCLOAK_URL=http://keycloak:8080 -e KEYCLOAK_USER=awms -e KEYCLOAK_PASSWORD=therootpassword -v ${PWD}/keycloak-cli-config.json:/misc/keycloak-cli-config.json --network=awms-microservices_default mytest bash

- docker run -e KEYCLOAK_URL=http://keycloak:8080 -e KEYCLOAK_USER=awms -e KEYCLOAK_PASSWORD=therootpassword --network=awms-microservices_default mytest