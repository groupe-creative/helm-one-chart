# Helm One Chart

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/helm-one-chart)](https://artifacthub.io/packages/search?repo=helm-one-chart)

This Helm Chart is a template for common Kubernetes resource manifests, which should cover most use cases.

The code is provided as-is with no warranties.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

## Get Repo Info

```console
# Add Repo
helm repo add helm-one-chart https://groupe-creative.github.io/helm-one-chart/releases/
helm repo update

# Search Chart Version
helm search repo helm-one-chart --versions
```

You can then run `helm search repo helm-one-chart` to see the charts.

_See [helm repo](https://helm.sh/docs/helm/helm_repo/) for command documentation._


## Configuration

_See [default values.yaml](https://github.com/groupe-creative/helm-one-chart/blob/main/helm/values.yaml) for more details._

## Examples

The [examples folder](https://github.com/groupe-creative/helm-one-chart/blob/main/examples/) contains multiples helm values files to test / deploy release to Kubernetes.

## Installing the Chart

To install the chart with the release name `my-release`:

```console
# Test (Dry Run)
helm upgrade --install --dry-run my-release -f my-values.yaml helm-one-chart/helm-one-chart

# Install
helm upgrade --install my-release -f my-values.yaml helm-one-chart/helm-one-chart
```

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```console
helm delete my-release
```

## Contributing

TODO

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[Apache 2.0 License](https://github.com/groupe-creative/helm-one-chart/blob/main/LICENSE).