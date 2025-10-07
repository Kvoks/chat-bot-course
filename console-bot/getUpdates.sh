#!/usr/bin/env bash

source .env

curl \
    --silent \
    -X POST \
    -H "Content-Type: application/json" \
    -d @getUpdatesReqest.json \
    https://api.telegram.org/bot$TOKEN/getUpdates | jq > getUpdatesResponse.json

