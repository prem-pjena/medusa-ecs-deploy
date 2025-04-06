output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.medusa.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.medusa.name
}

# Commented out to avoid error (resource not declared yet)
# output "ecs_service_name" {
#   description = "Name of the ECS service"
#   value       = aws_ecs_service.medusa.name
# }

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}
