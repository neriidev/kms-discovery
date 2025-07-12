output "sns_topic_arn" {
  value = aws_sns_topic.meu_topico.arn
}

output "sqs_queue_url" {
  value = aws_sqs_queue.minha_fila.id
}

output "subscription_arn" {
  value = aws_sns_topic_subscription.sub_sqs.arn
}
