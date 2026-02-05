# Create an SNS topic and subscribe an SMS endpoint to it
resource "aws_sns_topic_subscription" "sms_sub" {
  topic_arn = aws_sns_topic.hello_topic.arn
  protocol  = "sms"
  endpoint  = "+5511950800227"
}
