#!/bin/bash

# This script polls a public API and logs the result to a file, so you can verify execution.

set -e

API_URL="https://api.github.com/zen"
LOG_FILE="/app/repo/examples/poll_test.log"

# Print a start message

echo "Polling $API_URL ..."
echo "Showing Jaismeen How Continous deployment works"
# Fetch the API response
RESPONSE=$(curl -s "$API_URL")

# Log the response with a timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
echo "$TIMESTAMP - API response: $RESPONSE" | tee -a "$LOG_FILE"

echo "Polling complete. Check $LOG_FILE for results."
