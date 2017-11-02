#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "reviewee_given_name": "'"${FIRST}"'",
      "reviewee_surname": "'"${LAST}"'",
      "reviewee_business_unit": "'"${BUNIT}"'"
    }
  }'

echo
