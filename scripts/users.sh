#!/bin/bash
TOKEN='BAhJIiVhODkxYTI3NTE5ZDVlYWE0MzY0ZTEyOGQ3ZjE3Y2ZhZAY6BkVG--afc1576788f6870847865f4be00f43f84b62ee3d'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
