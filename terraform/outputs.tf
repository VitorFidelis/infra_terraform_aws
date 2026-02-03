# Saida do nome da funcao lambda
output "lambda_function_name" {
  value = aws_lambda_function.hello.function_name
}
