# Terraform Kubernetes IBM's App Identity and Access Adapter

## Introduction

This module deploys and configures IBM's App Identity and Access Adapter inside a Kubernetes Cluster.

## Security Controls

The following security controls can be met through configuration of this template:

* TBD

## Dependencies

* None

## Optional (depending on options configured):

* None

## Usage

```terraform
module "helm_app_identity_and_access_adapter" {
  source = "github.com/statcan/terraform-kubernetes-app-identity-and-access-adapter?ref=20200613.1"

  chart_version = "0.5.0"
  dependencies = [
    "${module.namespace_istio_system.depended_on}",
  ]

  helm_service_account = "tiller"
  helm_repository = "appidentityandaccessadapter"

  values = <<EOF

EOF
```

## Variables Values

| Name                 | Type   | Required | Value                                               |
| -------------------- | ------ | -------- | --------------------------------------------------- |
| chart_version        | string | yes      | Version of the Helm Chart                           |
| dependencies         | string | yes      | Dependency name refering to namespace module        |
| helm_service_account | string | yes      | The service account for Helm to use                 |
| helm_repository      | string | yes      | The repository where the Helm chart is stored       |
| values               | list   | no       | Values to be passed to the Helm Chart               |

## History

| Date     | Release    | Change                                                     |
| -------- | ---------- | ---------------------------------------------------------- |
| 20200613 | 20200613.1 | 1st release                                                |
| 20200613 | 20200613.2 | A few fixes.                                               |