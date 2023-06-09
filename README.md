# Description

This is a simple script to launch a [vcluster](https://www.vcluster.com/) using the [redhat-appstudio/e2e-test](https://github.com/redhat-appstudio/e2e-tests/blob/main/pkg/apis/vcluster/vcluster.go) library.
The intention is not to be used in production as it is, but instead to illustrate how to consume that package the most straightforward way for different purposes.

## Requirements

1. Go >= v1.19.0
2. [vcluster](https://www.vcluster.com/) >= 0.15.0

## Launch

To create a vcluster:

1. Make sure your terminal has access to a running kubernetes cluster.
2. Compile the binary.

   ```bash
    go mod tidy
    go mod vendor
    go build
   ```
3. Execute it:

    3.1. With the default values:
    * Cluster name: `mycluster`
    * Namespace: `vcluster-ns`

    ```bash
    ./byoc
    ```

    3.2. Providing specific values:

    ```bash
    ./byoc --clustername=<name_for_the_cluster> --namespace=<name_for_the_namespace>
    ```

