#!/bin/bash

# Extract user specified variables
variables=$(jq -rj '. | to_entries[] | "\(.key)=\(.value)\n"' /misc/keycloak-cli-config.json)

# printf $variables

while IFS= read -r line; do
    echo "Line: $line"
done <<< "$variables"

# java -jar ./keycloak-config-cli.jar