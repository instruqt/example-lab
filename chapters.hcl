resource "chapter" "introduction" {
  title = "Introduction"

  page "terraform" {
    file = "instructions/introduction/what_is_terraform.md"

    validation = {
      "introduction" = resource.quiz.introduction
    }
  }

  page "platform" {
    file = "instructions/introduction/workshop_environment.md"
  }

  page "outline" {
    file = "instructions/introduction/what_will_you_learn.md"
  }
}

resource "chapter" "installation" {
  title = "Install terraform"

  page "manual_installation" {
    file = "instructions/installation/manual_installation.md"

    validation = {
      manual_installation = resource.task.manual_installation
    }
  }

  page "verify_installation" {
    file = "instructions/installation/verify_installation.md"

    validation = {
      verify_installation = resource.task.verify_installation
    }
  }

  page "terraform_version" {
    file = "instructions/installation/terraform_version.md"

    validation = {
      terraform_version   = resource.task.terraform_version
    }
  }
}

resource "chapter" "workflow" {
  title = "Terraform workflow"

  page "terraform_init" {
    file = "instructions/workflow/terraform_init.md"

    validation = {
      terraform_init    = resource.task.terraform_init
    }
  }

  page "terraform_plan" {
    file = "instructions/workflow/terraform_plan.md"

    validation = {
      terraform_plan    = resource.task.terraform_plan
    }
  }

  page "terraform_apply" {
    file = "instructions/workflow/terraform_apply.md"

    validation = {
      terraform_apply   = resource.task.terraform_apply
    }
  }

  page "update_resources" {
    file = "instructions/workflow/update_resources.md"

    validation = {
      update_resources  = resource.task.update_resources
    }
  }

  page "terraform_destroy" {
    file = "instructions/workflow/terraform_destroy.md"

    validation = {
      terraform_destroy = resource.task.terraform_destroy
    }
  }
}

resource "chapter" "providers" {
  title = "Providers"

  page "install_provider" {
    file = "instructions/providers/install_provider.md"

    validation = {
      install_provider       = resource.task.install_provider
    }
  }

  page "provider_configuration" {
    file = "instructions/providers/provider_configuration.md"

    validation = {
      provider_configuration = resource.task.provider_configuration
    }
  }
}

resource "chapter" "state" {
  title = "State"

  page "viewing_state" {
    file = "instructions/state/viewing_state.md"

    validation = {
      viewing_state = resource.task.viewing_state
    }
  }

  page "list_state" {
    file = "instructions/state/list_state.md"

    validation = {
      list_state    = resource.task.list_state
    }
  }

  page "show_state" {
    file = "instructions/state/show_state.md"

    validation = {
      show_state    = resource.task.show_state
    }
  }
}

resource "chapter" "summary" {
  title = "Summary"

  page "summary" {
    file = "instructions/summary/page.md"
  }
}