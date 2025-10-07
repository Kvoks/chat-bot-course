#!/usr/bin/env bash

source .env

curl \
    --silent \
    -X POST \
    -H "Content-Type: application/json" \
    -d @sendMessageReqest.json \
    https://api.telegram.org/bot$TOKEN/sendMessage | jq

