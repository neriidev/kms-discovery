resource "aws_sns_topic" "meu_topico" {
  name = "topico-local"
}

resource "aws_sns_topic_subscription" "minha_sub" {
  topic_arn = aws_sns_topic.meu_topico.arn
  protocol  = "email"
  endpoint  = "exemplo@email.com"  # ou "http" e coloque uma URL para testes locais
}
