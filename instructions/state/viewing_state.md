# Viewing state

In this section we will use `terraform show` to view Terraform state.

<instruqt-video id="1r2NKPkscOc"></instruqt-video>

Terraform must store state about your managed infrastructure and configuration. 
This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

This state is stored by default in a local file named "terraform.tfstate".
Terraform uses state to determine which changes to make to your infrastructure.

The primary purpose of Terraform state is to store bindings between objects in a remote system and resource instances declared in your configuration. 
When Terraform creates a remote object in response to a change of configuration, it will record the identity of that remote object against a particular resource instance, and then potentially update or delete that object in response to future configuration changes.

While the format of the state files are just JSON, direct file editing of the state is discouraged. 
Terraform provides the `terraform state` command to perform basic modifications of the state using the CLI.

### Terraform show

<instruqt-video id="CRBjDXbHdik"></instruqt-video>

The `terraform show` command is used to provide human-readable output from a state or plan file. 
This can be used to inspect a plan to ensure that the planned operations are expected, or to inspect the current state as Terraform sees it.

You may use show with a path to either a Terraform state file or plan file. 
If you don't specify a file path, Terraform will show the latest state snapshot.

You can get machine-readable output by adding the `-json` command-line flag.

<instruqt-task id="viewing_state">
  Use the Terraform CLI to view the Terraform state in a machine-readable format.
</instruqt-task>