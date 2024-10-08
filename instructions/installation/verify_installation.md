# Verify installation

In this section we will explore the help command to verify our Terraform installation.

<instruqt-video id="hXHXMaYUtiI"></instruqt-video>

The Terraform CLI has a built-in help system. 
If you run just the `terraform` command, it will show you the available commands.

To get specific help for any specific command, use the `-help` option with the relevant subcommand. 
For example, to see help about the "validate" subcommand you can run `terraform validate -help`.

The inline help built in to Terraform CLI describes the most important characteristics of each command. 
For more detailed information, you can refer to each [command's page](https://developer.hashicorp.com/terraform/cli/commands) for details.

<instruqt-task id="verify_installation">
  Use the `terraform -help` command to explore the possibilities of the Terraform CLI.
</instruqt-task>