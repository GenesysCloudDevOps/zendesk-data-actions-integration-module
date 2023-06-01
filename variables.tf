variable "integration_name" {
    type        = string
    description = "The name of the Genesys Cloud integration."
}

variable "integration_creds_user_email" {
    type        = string
    description = "The email used for authentication."
}

variable "integration_creds_base_url" {
    type        = string
    description = "Base URL for customer service. This will be customer specific, typically in the form https://{subdomain}.zendesk.com."
}

variable "integration_creds_api_token" {
    type        = string
    sensitive   = true
    description = "API Token issued by Zendesk for this account."
}