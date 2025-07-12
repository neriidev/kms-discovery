provider "aws" {
  access_key = "mock"
  secret_key = "mock"
  region     = "us-east-1"

  endpoints {
    sns = "https://localhost.localstack.cloud:4566"
  }

    # ESSENCIAIS PARA IGNORAR CHAMADAS REAIS
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
 # s3_force_path_style         = true
  insecure                    = true
  
}
