provider "aws" {
  access_key = "mock"
  secret_key = "mock"
  region     = "us-east-1"

  endpoints {
    sns = "https://localhost.localstack.cloud:4566"
  }
}
