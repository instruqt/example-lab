# Terraform plan

In this section we will use `terraform plan` to preview the changes Terraform would make.

<instruqt-video id="SdyCmPj1BH8"></instruqt-video>

The `terraform plan` command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. 
By default, when Terraform creates a plan it:

- Reads the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date.
- Compares the current configuration to the prior state and noting any differences.
- Proposes a set of change actions that should, if applied, make the remote objects match the configuration.

The `plan` command alone does not actually carry out the proposed changes You can use this command to check whether the proposed changes match what you expected before you apply the changes or share your changes with your team for broader review.

If Terraform detects that no changes are needed to resource instances or to root module output values, terraform plan will report that no actions need to be taken.

Terraform marks each entry of the plan with a `+` if it would create a value, a `-` if it would remove a value, and a `~` if it would change the value in place.
Some values are listed as `(known after apply)`. 
This means that Terraform does not know the actual value until it has applied all changes. 
This is usually the case for computed values.

In the `docker.tf` file there are 2 resources described, a `docker_image` and a `docker_container`. 
When running `terraform plan` we can see that Terraform would add these resources, shown by a `+`.

<instruqt-task id="terraform_plan">
  Run the `terraform plan` command to preview the changes that Terraform plans to make to your infrastructure.
</instruqt-task>