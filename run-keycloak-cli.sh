#!/bin/bash

# Extract user specified variables
config=/config/awms-realm
file=/misc/keycloak-cli-config.json
variables=$(jq -rj '. | to_entries[] | "\(.key)=\(.value)\n"' $file)

# echo $variables

# printf $variables

while IFS= read -r line; do
    # echo $line
    key=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2)

    type=$(cat "$file" | jq -r ".[\"$key\"] | type")

    if [ "$type" = "string" ]; then
        value=$(echo "$value" | sed 's/"/\\"/g')
        value="\"$value\""
    fi

    configContent=$(cat "$config")
    configContent=$(echo "$configContent" | sed "s|\${$key}|$value|g")

    echo "$configContent" > $config

done <<< "$variables"

java -jar ./keycloak-config-cli.jar