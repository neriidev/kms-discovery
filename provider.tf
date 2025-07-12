provider "aws" {
  access_key = "mock"
  secret_key = "mock"
  region     = "us-east-1"

  endpoints {
    sns = "http://localhost:4566"
  }

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  insecure                    = true
}
