# Fetch an existing IAM role by name
data "aws_iam_role" "lambda_role" {
  name = "lambda-hello-java-role"
}
