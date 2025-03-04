#!/bin/bash

REPO_OWNER="djoudj-dev"
REPO_NAME="new-repo"  # Remplacez par le nom de votre nouveau repository
TOKEN="your_personal_access_token"  # Remplacez par votre token GitHub

curl -X POST -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $TOKEN" \
  https://api.github.com/repos/$REPO_OWNER/.gitworkflow/dispatches \
  -d '{"event_type":"refresh"}'
