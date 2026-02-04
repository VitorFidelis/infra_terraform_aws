# Create an SQS queue with a dead-letter queue (DLQ)
resource "aws_sqs_queue" "hello_queue" {
  name = "hello-queue"

  visibility_timeout_seconds = 30
  message_retention_seconds  = 345600 # 4 dias
}

