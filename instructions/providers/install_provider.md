# Finding and installing providers

In this section we will search for Terraform providers and install them.

<instruqt-video  id="MJIcYDfCACE"></instruqt-video>

Terraform relies on plugins called providers to interact with cloud providers, SaaS providers, and other APIs.
Providers can also offer local utilities for tasks like generating random numbers for unique resource names.

Each provider adds a set of [resource types](https://developer.hashicorp.com/terraform/language/resources) and/or [data sources](https://developer.hashicorp.com/terraform/language/data-sources) that Terraform can manage.
Every resource type is implemented by a provider; without providers, Terraform can't manage any kind of infrastructure.

### Terraform registry

<instruqt-video  id="xO1_FhFfgbQ"></instruqt-video>

Providers are distributed separately from Terraform itself, and each provider has its own release cadence and version numbers.
To find providers for the infrastructure platforms you use, browse the [providers section of the Terraform Registry](https://registry.terraform.io/browse/providers). 
This is the main directory of publicly available Terraform providers, and hosts providers for most major infrastructure platforms.
Some providers on the Registry are developed and published by HashiCorp, some are published by platform maintainers, and some are published by users and volunteers. 

Terraform CLI finds and installs providers when [initializing a working directory](https://developer.hashicorp.com/terraform/cli/init). 
It can automatically download providers from a Terraform registry, or load them from a local mirror or cache. 
If you are using a persistent working directory, you must reinitialize whenever you change a configuration's providers.

### Required providers

Terraform configurations must declare which providers they require, so that Terraform can install and use them.
Provider requirements are declared in a `required_providers` block, which consists of a local name, a source location, and a version constraint:

<instruqt-code>
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}
</instruqt-code>

The `required_providers` block must be nested inside the top-level terraform block (which can also contain other settings).
Each argument in the `required_providers` block enables one provider. 
The key determines the provider's local name (its unique identifier within this module), and the value is an object with the following elements:

<instruqt-api-table>
  <instruqt-api-field name="source" type="string" required="true" value="">
    The global source address for the provider you intend to use, such as hashicorp/aws.
  </instruqt-api-field>
  <instruqt-api-field name="version" type="string" required="true" value="">
    A version constraint specifying which subset of available provider versions the module is compatible with.
  </instruqt-api-field>
</instruqt-api-table>

### Versioning

Providers are released separately from Terraform itself, and have their own version numbers. 
In production we recommend constraining the acceptable provider versions in the configuration's provider requirements block, to make sure that terraform init does not install newer versions of the provider that are incompatible with the configuration.

The version argument is optional; if omitted, Terraform will accept any version of the provider as compatible. 
However, we strongly recommend specifying a version constraint for every provider your module depends on.
Version constraints can specify a specific version or use <a href="https://developer.hashicorp.com/terraform/language/expressions/version-constraints" target="_blank">operators</a> such as `>=` and `~>` to specify version ranges.

### Dependency lock file

<instruqt-video id="eX51ziztMQc"></instruqt-video>

To ensure Terraform always installs the same provider versions for a given configuration, you can use Terraform CLI to create a dependency lock file and commit it to version control along with your configuration. 
If a lock file is present, Terraform Cloud, CLI, and Enterprise will all obey it when installing providers.

The dependency lock file is a file that belongs to the configuration as a whole, rather than to each separate module in the configuration. 
For that reason Terraform creates it and expects to find it in your current working directory when you run Terraform, which is also the directory containing the `.tf` files for the root module of your configuration.

<instruqt-task id="install_provider">
  Add the `vault` [provider](https://registry.terraform.io/providers/hashicorp/vault/latest) to the current Terraform configuration and initialize the workspace.
</instruqt-task>