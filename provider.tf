provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  endpoints {
    sns = "http://localhost:4566"
    sqs = "http://localhost:4566"
    sts = "http://localhost:4566"
  }

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}
