resource "aws_ecr_repository" "repo" {
  name                 = "aws-project"
  image_tag_mutability = "MUTABLE"
  force_delete = true
}

output "ecr" {
  value = aws_ecr_repository.repo.repository_url
}