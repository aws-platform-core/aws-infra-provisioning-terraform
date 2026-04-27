#!/usr/bin/env bash
set -euo pipefail

REQUEST_ID="${1:-}"
STATUS="${2:-}"

if [[ -z "$REQUEST_ID" || -z "$STATUS" ]]; then
  echo "Usage: $0 <request_id> <status>"
  exit 1
fi

if [[ -z "${REQUESTS_TABLE:-}" ]]; then
  echo "REQUESTS_TABLE environment variable is required"
  exit 1
fi

if [[ -z "${AWS_REGION:-}" ]]; then
  echo "AWS_REGION environment variable is required"
  exit 1
fi

TIMESTAMP="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

echo "Updating request '$REQUEST_ID' to status '$STATUS' at '$TIMESTAMP'"

aws dynamodb update-item \
  --table-name "$REQUESTS_TABLE" \
  --key "{\"request_id\":{\"S\":\"$REQUEST_ID\"}}" \
  --update-expression "SET #status = :status, updated_at = :updated_at" \
  --expression-attribute-names '{"#status":"status"}' \
  --expression-attribute-values "{\":status\":{\"S\":\"$STATUS\"},\":updated_at\":{\"S\":\"$TIMESTAMP\"}}" \
  --region "$AWS_REGION"