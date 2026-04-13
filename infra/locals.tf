locals {
  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    owner       = "devops"
  }

  name_prefix = "${var.project}-${var.environment}"
}
