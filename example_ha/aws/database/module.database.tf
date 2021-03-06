module "database" {
  source             = "../../../modules/aws/data/rds"
  rds_instance_name  = var.aws_env_name
  database_password  = var.database_password
  vpc_id             = var.vpc_id
  source_cidr_blocks = concat(var.public_subnet_cidrs, var.private_subnet_cidrs)
  rds_instance_class = var.aws_rds_instance_class
  db_subnet_ids      = concat(var.private_subnet_ids)
  common_tags        = var.common_tags
}
