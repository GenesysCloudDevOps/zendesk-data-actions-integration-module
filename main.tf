resource "genesyscloud_integration" "integration" {
    integration_type = "zendesk-data-actions"
    intended_state   = "ENABLED"

    config {
        name  = "${var.integration_name}"
        credentials = {
            zendeskApiToken = genesyscloud_integration_credential.credential.id
        }
    }
}

resource "genesyscloud_integration_credential" "credential" {
    name                 = "Zendesk Credentials"
    credential_type_name = "zendeskApiToken"

    fields = {
        userEmail = var.integration_creds_user_email
        baseUrl   = var.integration_creds_base_url
        apiToken  = var.integration_creds_api_token
    }
}