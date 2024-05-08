module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name                             = var.service_name
  cluster_version                          = var.cluster_version
  enable_cluster_creator_admin_permissions = true
  vpc_id                                   = aws_vpc.this.id
  subnet_ids                               = aws_subnet.this["pvt_a"].id
  cluster_endpoint_public_access           = true
  eks_managed_node_groups = {
    default = {
      min_size     = var.node_groups.min_size
      max_size     = var.node_groups.max_size
      desired_size = var.node_groups.desired_size

      instace_types = var.node_groups.instace_type
    }
  }
}
