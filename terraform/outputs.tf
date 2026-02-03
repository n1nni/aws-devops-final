# ===============================
# ECS Cluster
# ===============================
output "ecs_cluster_name" {
  value       = aws_ecs_cluster.app.name
  description = "Name of the ECS cluster"
}

# ===============================
# ECS Service
# ===============================
output "ecs_service_name" {
  value       = aws_ecs_service.app.name
  description = "Name of the ECS service"
}

# ===============================
# Application Load Balancer
# ===============================
output "alb_dns_name" {
  value       = aws_lb.app.dns_name
  description = "DNS name of the ALB to access the application"
}

# ===============================
# RDS
# ===============================
output "db_endpoint" {
  value       = aws_db_instance.mysql.address
  description = "RDS endpoint to connect to the database"
}
