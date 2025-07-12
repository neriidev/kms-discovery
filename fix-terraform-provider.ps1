# Mata qualquer processo terraform.exe em execução
Write-Host "🛑 Encerrando processos terraform.exe..."
Get-Process terraform -ErrorAction SilentlyContinue | Stop-Process -Force

# Espera um pouco
Start-Sleep -Seconds 2

# Verifica se está em um diretório com projeto Terraform
if (-Not (Test-Path ".\main.tf")) {
    Write-Host "⚠️ Atenção: Nenhum arquivo main.tf encontrado no diretório atual."
    Write-Host "💡 Vá até a pasta do projeto Terraform antes de rodar este script."
    exit
}

# Remove a pasta .terraform
if (Test-Path ".terraform") {
    Write-Host "🧹 Removendo a pasta .terraform..."
    Remove-Item -Recurse -Force .terraform
}

# Executa terraform init
Write-Host "⚙️ Executando terraform init..."
terraform init

Write-Host "✅ Pronto! O provider será instalado novamente."
