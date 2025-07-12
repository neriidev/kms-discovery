# kms-discovery

Publique uma mensagem no SNS para testar:

bash
Copiar
Editar
aws --endpoint-url=http://localhost:4566 sns publish \
  --topic-arn arn:aws:sns:us-east-1:000000000000:topico-local \
  --message "Mensagem de teste"
Leia da fila SQS:

bash
Copiar
Editar
aws --endpoint-url=http://localhost:4566 sqs receive-message \
  --queue-url http://localhost:4566/000000000000/fila-local