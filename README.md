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
  source = "https://github.com/canada-ca-terraform-modules/terraform-kubernetes-app-identity-and-access-adapter?ref=v2.0.3"

  chart_version = "0.5.0"
  dependencies = [
    "${module.namespace_istio_system.depended_on}",
  ]

  helm_repository = "appidentityandaccessadapter"

  values = <<EOF

EOF
```

## Variables Values

| Name                 | Type   | Required | Value                                               |
| -------------------- | ------ | -------- | --------------------------------------------------- |
| chart_version        | string | yes      | Version of the Helm Chart                           |
| dependencies         | string | yes      | Dependency name refering to namespace module        |
| helm_repository      | string | yes      | The repository where the Helm chart is stored       |
| values               | string | no       | Values to be passed to the Helm Chart               |

## History

| Date     | Release    | Change                                                     |
| -------- | ---------- | ---------------------------------------------------------- |
| 20200613 | 20200613.1 | 1st release                                                |
| 20200613 | 20200613.2 | A few fixes.                                               |
| 20200613 | 20200613.3 | Fix some of the output references.                         |
| 20200619 | v2.0.0     | Update module to use Helm 3 provider                       |
| 20200622 | v2.0.1     | Remove wait dependency that was required for Helm2         |
| 20200622 | v2.0.2     | Add support for helm credentials                           |
| 20230202 | v2.0.3     | Specify sensitive variables                                |
