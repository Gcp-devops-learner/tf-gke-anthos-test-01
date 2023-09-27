module "hub-primary" {
  source = "./modules/hub"

  project_id              = var.project_id
  cluster_name            = module.primary-cluster.name
  location                = module.primary-cluster.location
  cluster_endpoint        = module.primary-cluster.endpoint
  gke_hub_membership_name = "primary"
  gke_hub_sa_name         = "primary"
}

module "hub-secondary" {
  source = "./modules/hub"

  project_id              = var.project_id
  cluster_name            = module.secondary-cluster.name
  location                = module.secondary-cluster.location
  cluster_endpoint        = module.secondary-cluster.endpoint
  gke_hub_membership_name = "secondary"
  gke_hub_sa_name         = "secondary"
}