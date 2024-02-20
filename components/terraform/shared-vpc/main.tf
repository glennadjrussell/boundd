module "vpc" {
  source = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id = var.project
  network_name = var.vpc_name
  routing_mode = "GLOBAL"

  shared_vpc_host = true

  subnets = var.subnets
}

