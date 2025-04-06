resource "aws_ecr_repository" "medusa" {
  name                 = "${var.app_name}-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "${var.app_name}-repo"
    Environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}
