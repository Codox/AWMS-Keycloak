#!/bin/bash

# Extract user specified variables
file=/misc/keycloak-cli-config.json
variables=$(jq -rj '. | to_entries[] | "\(.key)=\(.value)\n"' $file)

echo $variables

# printf $variables

while IFS= read -r line; do
    echo $line
    key=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2)

    type=$(cat "$file" | jq -r ".[\"$key\"] | type")

    echo "$key, $value, $type"


done <<< "$variables"

# java -jar ./keycloak-config-cli.jar