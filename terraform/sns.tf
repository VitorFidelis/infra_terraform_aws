# Create an SNS topic for Java application notifications
resource "aws_sns_topic" "hello_topic" {
  name         = "hello-java-sns-topic"
  display_name = "Hello Java SNS Topic"

}
