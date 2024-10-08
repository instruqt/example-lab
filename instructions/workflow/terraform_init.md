# Terraform init

In this section we will initialize the Terraform workspace.

<instruqt-video id="d5Z-mQbxoP8"></instruqt-video>

In our workspace we have several Terraform configuration files: `docker.tf` and `main.tf`.
If we look in `main.tf` we can see a `terraform` block that tells Terraform which providers are required and what versions of those providers should be used.

The `terraform init` command initializes a working directory containing Terraform configuration files. 
This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. 
It is safe to run this command multiple times.

By default, `terraform init` assumes that the working directory already contains a configuration and will attempt to initialize that configuration.

During init Terraform searches the configuration for both direct and indirect references to providers and attempts to install the plugins for those providers. 
For providers that are published in either the public <a href="https://registry.terraform.io/browse/providers" target="_blank">Terraform Registry</a> or in a third-party provider registry, terraform init will automatically find, download, and install the necessary provider plugins.

Once done initializing the workspace, Terraform creates several hidden files in the current directory.
One of the files that Terraform creates is the `.terraform.lock.hcl` file which is used to ensure that the provider we are using matches the provider that is installed on the system.

The `.terraform` folder is where the actual providers are stored, namespaced by `source/provider/version/architecture`.

<instruqt-task id="terraform_init">
  Initialize the working directory `$HOME/terraform_basics` containing the Terraform configuration files using the `terraform init` command.
</instruqt-task>