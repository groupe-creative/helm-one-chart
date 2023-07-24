#!/bin/bash

# Usage: ./.github/ci/tu.sh <template-mode> <debug>
# Exemples:
# * ./.github/ci/tu.sh
# * ./.github/ci/tu.sh dry-run
# * ./.github/ci/tu.sh dry-run debug
# * ./.github/ci/tu.sh template debug

# Helm Test Mode ("template" | "dry-run")
HELM_MODE=$1
# Helm Debug Mode ("" | "debug")
HELM_DEBUG=$2

./examples/adminer/template.sh $HELM_MODE $HELM_DEBUG
./examples/angular/template.sh $HELM_MODE $HELM_DEBUG
./examples/busybox/template.sh $HELM_MODE $HELM_DEBUG
./examples/springboot/template.sh $HELM_MODE $HELM_DEBUG