
# AWMS Hyperlogic: Keycloak

This repository holds the configuration and Docker images to configure Keycloak for the AWMS Hyperlogic service.

There are **2** images associated with this repository:

- **awms-hyperlogic-keycloak**: The Keycloak server
- **awms-hyperlogic-keycloak-cli**: The CLI tool responsible for applying configurations to Keycloak between version updates

## Installation
### AWMS Hyperlogic Keycloak
1. 

### AWMS Hyperlogic Keycloak CLI
1. Copy the `keycloak-cli-config.json.example` to `keycloak-cli-config.json` in the root of this repository. This file will be mounted into the container at runtime.
2. Edit the `keycloak-cli-config.json`

## Running
### AWMS Hyperlogic Keycloak

### AWMS Hyperlogic Keycloak CLI
1. Run `docker run -it -e KEYCLOAK_URL=<Auth URL> -e KEYCLOAK_USER=<Keycloak Admin User> -e KEYCLOAK_PASSWORD=<Keycloak Admin Password> -v ${PWD}/keycloak-cli-config.json:/misc/keycloak-cli-config.json ghcr.io/codox/awms-hyperlogic-keycloak-cli:<Version>`

## Misc Notes