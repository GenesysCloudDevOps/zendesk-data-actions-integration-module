Sets up a Zendesk integration using CX as Code and Terraform remote modules

## Usage

Shown below is an example of how to configure the remote module.

```hcl
module "integration" {
    source = "git::https://github.com/GenesysCloudDevOps/zendesk-data-actions-integration-module.git?ref=v1.0.0"

    integration_name                = "Zendesk Integration"
    integration_creds_user_email    = "<email>"
    integration_creds_base_url      = "<base URL>"
    integration_creds_api_token     = "<api token>"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a>[terraform](https://www.terraform.io/) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_genesyscloud"></a> [genesyscloud](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest) | >= 1.0|

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The integration name. | `string` | yes |
| <a name="integration_creds_user_email"></a> [integration_creds_user_email](#integration\_\creds\_\user\_\email)  | The email used for authentication. | `string` | yes |
| <a name="integration_creds_base_url"></a> [integration_creds_base_url](#integration\_\creds\_\base\_\url)  | The Base URL for customer service. This will be customer specific, typically in the form https://{subdomain}.zendesk.com. | `string` | yes |
| <a name="integration_creds_api_token"></a> [integration_creds_api_token](#integration\_\creds\_\api\_\token)  | The API Token issued by Zendesk for this account. | `string` | yes |

## Outputs

| Name | Description | Type | 
|------|-------------|------|
| <a name="integration_id"></a> [integration_id](#integration\_\id)  | The ID of the integration. | `string` |
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The name of the integration. | `string` | 