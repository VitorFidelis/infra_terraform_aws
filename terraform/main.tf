# Este arquivo define uma função Lambda de AWS escrita en Java
resource "aws_lambda_function" "hello" {
  function_name = "hello-world-java"
  role          = aws_iam_role.lambda_role.arn

  runtime = "java17"
  handler = "com.example.HelloHandler::handleRequest"

  filename         = "${path.module}/../lambda/target/hello-lambda-1.0.0.jar"
  source_code_hash = filebase64sha256("${path.module}/../lambda/target/hello-lambda-1.0.0.jar")
}


