#!/bin/bash

# Usage: ./examples/busybox/template.sh <template-mode> <debug>
# Exemples:
# * ./examples/busybox/template.sh
# * ./examples/busybox/template.sh dry-run
# * ./examples/busybox/template.sh dry-run debug
# * ./examples/busybox/template.sh template debug

source ./.platforms/bootstrap.sh

# Test Template for "adminer"
helm_test_template "busybox"