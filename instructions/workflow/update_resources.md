# Update resources

In this section we will make changes to our configuration and apply them.

<instruqt-video id="oc4RspW7Ijw"></instruqt-video>

Infrastructure is continuously evolving, and Terraform helps you manage that change. 
As you change Terraform configurations, Terraform builds an execution plan that only modifies what is necessary to reach your desired state.

When doing a `terraform plan`, Terraform will tell you the changes it plans to make.
The prefix `-/+` means that Terraform will destroy and recreate the resource, rather than updating it in-place. 
Terraform can update some attributes in-place (indicated with the `~` prefix), but changing others requires recreating resources. 
Terraform handles these details for you, and the execution plan displays what Terraform will do.

Additionally, the execution plan shows which changes force Terraform to replace a resource. 
Using this information, you can adjust your changes to to avoid destructive updates if necessary.

In this case we will be updating the configuration in `docker.tf` and change the version of vault to a newer one.
Because the `docker_container` resources uses a reference to the `docker_image`, both resources will be updated when applying the changes.

After changing the configuration, you can run terraform apply to see how Terraform will apply this change to the existing resources.

We can validate that the changes have been properly applied by executing `docker ps` and checking the currently running version of the vault container.

<instruqt-task id="update_resources">
  Change the version of the `vault` image from `1.12.6` to `1.12.7` in `docker.tf` and apply the changes.
</instruqt-task>