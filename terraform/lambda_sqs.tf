# This Terraform configuration creates an AWS Lambda function that is triggered by messages from an SQS queue.
resource "aws_lambda_event_source_mapping" "sqs_trigger" {
  event_source_arn = aws_sqs_queue.hello_queue.arn
  function_name    = aws_lambda_function.hello_lambda.arn

  batch_size = 10
  enabled    = true
}
