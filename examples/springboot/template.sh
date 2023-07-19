#!/bin/bash

# Usage: ./examples/springboot/template.sh <template-mode> <debug>
# Exemples:
# * ./examples/springboot/template.sh
# * ./examples/springboot/template.sh dry-run
# * ./examples/springboot/template.sh dry-run debug
# * ./examples/springboot/template.sh template debug

source ./.platforms/bootstrap.sh

# Test Template for "adminer"
helm_test_template "springboot"