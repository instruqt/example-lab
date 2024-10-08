# Terraform apply

In this section we will create resources using Terraform.

<instruqt-video id="7BVkOEUZn8M"></instruqt-video>

The `terraform apply` command executes the actions proposed in a Terraform plan.

When you run terraform apply without passing a saved plan file, Terraform automatically creates a new execution plan as if you had run terraform plan. 
Terraform then prompts you to approve that plan `Do you want to approve these actions?`. And after confirming with "yes" it takes the indicated actions. 

You can pass the `-auto-approve` option to instruct Terraform to apply the plan without asking for confirmation.

If we look at the current Docker images (`docker images`) and containers (`docker ps`) we can see that we have nothing pulled and running.
Once we execute `terraform apply` we can see that Terraform is pulling the `vault:1.12.6` image and afterwards creates the `terraform-basics-vault` Docker container, using that image.
If we again look at the Docker images and containers, we can now see them there.

<instruqt-task id="terraform_apply">
  Run `terraform apply` to execute the actions proposed in the Terraform plan.
</instruqt-task>