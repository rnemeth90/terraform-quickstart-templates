# Kubernetes

Terraform module to deploy a Kubernetes cluster on Azure by using the managed Kubernetes solution AKS. This module will create
an AKS cluster with node pools and a managed identity. You can configure replace any variable values in terraform.tfvars.

You will need to authenticate Azure via the Azure CLI or by using a service principal. To use a service principal,
open uncomment these lines in settings.tf and add the values for your service principal:

```
  subscription_id = ""
  tenant_id       = ""
  client_id       = ""
  client_secret   = ""
```