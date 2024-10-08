# Provider configuration

In this section we will configure the installed Terraform providers.

<instruqt-video id="uyiihjFCW5o"></instruqt-video>

Some providers require you to configure them with endpoint URLs, cloud regions, or other settings before Terraform can use them. This page documents how to configure settings for providers.

Provider configurations belong in the root module of a Terraform configuration. (Child modules receive their provider configurations from the root module; for more information, see The Module providers Meta-Argument and Module Development: Providers Within Modules.)

A provider configuration is created using a provider block:

```hcl
provider "google" {
  project = "acme-app"
  region  = "us-central1"
}
```

The name given in the block header ("google" in this example) is the local name of the provider to configure. This provider should already be included in a required_providers block.

The body of the block (between \{ and \}) contains configuration arguments for the provider. Most arguments in this section are defined by the provider itself; in this example both project and region are specific to the google provider.

A provider's documentation should list which configuration arguments it expects. For providers distributed on the Terraform Registry, versioned documentation is available on each provider's page, via the "Documentation" link in the provider's header.

Unlike many other objects in the Terraform language, a provider block may be omitted if its contents would otherwise be empty. Terraform assumes an empty default configuration for any provider that is not explicitly configured.

<instruqt-task id="provider_configuration">
  Add a provider configuration block for the vault provider that sets the address to `http://localhost:8200`. 
</instruqt-task>