# Terraform destroy

In this section we will destroy all resources Terraform has created.

<instruqt-video id="QUPUVdwszbo"></instruqt-video>

The terraform destroy command is a convenient way to destroy all remote objects managed by a particular Terraform configuration.

While you will typically not want to destroy long-lived objects in a production environment, Terraform is sometimes used to manage ephemeral infrastructure for development purposes, in which case you can use terraform destroy to conveniently clean up all of those temporary objects once you are finished with your work.

When running the `terraform destroy` command, Terraform will show you a preview of the resources it will destroy. 
This allows you to validate that the resources that will be destroyed are correct.

In the case of this module, we want to clean up the entire environment, so Terraform should destroy the Docker container and remove the Docker image from the system.

After running `terraform destroy` and approving the command, the `terraform-basics-vault` container should no longer be running and the `vault` image should no longer be present.

<instruqt-task id="terraform_destroy">
  Clean up the environment by running `terraform destroy`.
</instruqt-task>