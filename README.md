# Postgres for Azure Kubernetes deployments (AKS) integrated with AzureKeyvaultSecrets

The repository only contains a Dockerfile that uses the standard versions of Postgres and installs the ca-certificates.

This is done to support a very specific Kubernetes deployment need: if Kuberntes clusters are deployed through AKS and secerets are retrieved from the Azure Keyvault, instead of being input manually (using the [AzureKeyvaultSecrets tool](https://github.com/SparebankenVest/azure-key-vault-to-kubernetes)), it's mandatory to install the *ca-certificates* package to safely connect to the Azure Keyvault while downloading secrets at runtime.

If common ca-certificates are not present on the machine, the following issue should be expected: [https://github.com/SparebankenVest/azure-key-vault-to-kubernetes#env-injector---x509-certificate-signed-by-unknown-authority](https://github.com/SparebankenVest/azure-key-vault-to-kubernetes#env-injector---x509-certificate-signed-by-unknown-authority).
