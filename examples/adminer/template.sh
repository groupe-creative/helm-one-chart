#!/bin/bash

# Usage: ./examples/adminer/template.sh <template-mode> <debug>
# Exemples:
# * ./examples/adminer/template.sh
# * ./examples/adminer/template.sh dry-run
# * ./examples/adminer/template.sh dry-run debug
# * ./examples/adminer/template.sh template debug

source ./.platforms/bootstrap.sh

# Test Template for "adminer"
helm_test_template "adminer"