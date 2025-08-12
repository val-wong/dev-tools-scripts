#!/bin/bash
if [ -z "$OKTA_CLIENT_ORGURL" ] || [ -z "$OKTA_CLIENT_TOKEN" ] || [ -z "$APP_ID" ]; then
  echo "Please set OKTA_CLIENT_ORGURL, OKTA_CLIENT_TOKEN, and APP_ID environment variables."
  exit 1
fi

curl -s -H "Authorization: SSWS $OKTA_CLIENT_TOKEN" \
  "$OKTA_CLIENT_ORGURL/api/v1/apps/$APP_ID" \
| jq -r '.settings.signOn | "ACS=\(.ssoAcsUrl)\nENTITY=\(.audience)\nRECIPIENT=\(.recipient)\nDESTINATION=\(.destination)"'
