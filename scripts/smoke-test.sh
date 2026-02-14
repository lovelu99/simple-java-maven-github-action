#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./scripts/smoke-test.sh http://localhost:8080 simple-webapp
#
# This expects the WAR deployed on Tomcat, accessible at:
#   <baseUrl>/<contextPath>/
#   <baseUrl>/<contextPath>/hello?name=Test

BASE_URL="${1:-http://localhost:8080}"
CONTEXT_PATH="${2:-simple-webapp}"

ROOT_URL="${BASE_URL%/}/${CONTEXT_PATH}/"
HELLO_URL="${BASE_URL%/}/${CONTEXT_PATH}/hello?name=Test"

echo "Checking root page: ${ROOT_URL}"
curl -fsS "${ROOT_URL}" >/dev/null
echo "OK"

echo "Checking hello endpoint: ${HELLO_URL}"
RESP="$(curl -fsS "${HELLO_URL}")"

echo "Response: ${RESP}"
if [[ "${RESP}" != "Hello, Test!"* ]]; then
  echo "Unexpected response"
  exit 1
fi

echo "Smoke test passed ✅"
