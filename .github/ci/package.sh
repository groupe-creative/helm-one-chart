#!/bin/bash

# Usage: ./.github/ci/package.sh

helm package ./helm/
mv helm-one-chart*.tgz docs/releases
helm repo index --url https://groupe-creative.github.io/helm-one-chart/releases/ ./docs/releases