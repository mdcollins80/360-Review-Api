#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "qowp": "'"${QOWP}"'",
      "prob": "'"${PROB}"'",
      "imef": "'"${IMEF}"'"
    }
  }'

echo
