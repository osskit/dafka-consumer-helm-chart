# dafka-consumer-helm-chart

This is a Helm Chart for the awesome [dafka-consumer](https://github.com/osskit/dafka-consumer) project.

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add dafka-consumer https://osskit.github.io/dafka-consumer-helm-chart

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo dafka-consumer` to see the charts.

To install the dafka-consumer chart:

    helm upgrade my-dafka-consumer dafka-consumer/dafka-consumer --install --namespace data --create-namespace

To uninstall the chart:

    helm delete my-dafka-consumer --namespace data

## Configuration

To get an overview of the configurable and default Values check out the Chart specific [README](./charts/dafka-consumer/README.md).
