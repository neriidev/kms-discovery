# SQS Queue
resource "aws_sqs_queue" "minha_fila" {
  name = "fila-local"
}

# Permitir que o tópico SNS envie mensagens para a fila SQS
resource "aws_sqs_queue_policy" "sns_to_sqs" {
  queue_url = aws_sqs_queue.minha_fila.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = "sqs:SendMessage",
        Resource = aws_sqs_queue.minha_fila.arn,
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = aws_sns_topic.meu_topico.arn
          }
        }
      }
    ]
  })
}

# SNS → SQS subscription
resource "aws_sns_topic_subscription" "sub_sqs" {
  topic_arn = aws_sns_topic.meu_topico.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.minha_fila.arn
}
