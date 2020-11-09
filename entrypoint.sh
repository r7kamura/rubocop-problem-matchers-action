#!/usr/bin/bash

set -euo pipefail

echo "::add-matcher::$(pwd)/.github/matchers/rubocop.json"
