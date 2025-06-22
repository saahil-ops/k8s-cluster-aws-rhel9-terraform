#!/bin/bash
set -e

DD_API_KEY="<YOUR_DATADOG_API_KEY>"
DD_SITE="datadoghq.com"

sudo dnf install -y curl
curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh | DD_API_KEY=$DD_API_KEY DD_SITE=$DD_SITE bash
