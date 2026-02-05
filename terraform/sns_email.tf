# Create an SNS topic and subscribe an email endpoint to it
resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.hello_topic.arn
  protocol  = "email"
  endpoint  = "vitor.fidelis5587@gmail.com"
}
