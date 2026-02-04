# Terraform configuration for deploying a Java AWS Lambda function
resource "aws_lambda_function" "hello_lambda" {
  function_name = "hello-java-lambda"

  runtime = "java17"
  handler = "com.example.HelloHandler::handleRequest"

  filename         = "../lambda/target/hello-lambda-1.0.0.jar"
  source_code_hash = filebase64sha256("../lambda/target/hello-lambda-1.0.0.jar")

  role = data.aws_iam_role.lambda_role.arn

  memory_size = 512
  timeout     = 10
}

