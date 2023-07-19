#!/bin/bash

# Usage: ./examples/angular/template.sh <template-mode> <debug>
# Exemples:
# * ./examples/angular/template.sh
# * ./examples/angular/template.sh dry-run
# * ./examples/angular/template.sh dry-run debug
# * ./examples/angular/template.sh template debug

source ./.platforms/bootstrap.sh

# Test Template for "adminer"
helm_test_template "angular"