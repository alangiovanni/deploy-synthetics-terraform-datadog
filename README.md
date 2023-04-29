# MaC - Monitoring as Code
	Deploy de um Synthetics API Test no Datadog com Terraform 🚀
<p align="center">
 <a href="#-sobre-o-projeto">Sobre</a> •
 <a href="#-funcionalidades">Funcionalidades</a> •
 <a href="#-pr%C3%A9-requisitos">Pré-requisitos</a> •
 <a href="#-instala%C3%A7%C3%A3o">Instalação</a> •
 <a href="#%EF%B8%8F-configura%C3%A7%C3%A3o">Configuração</a> •
 <a href="#-deploy">Deploy</a> •
 <a href="#-autor">Autor</a>
</p>

## 💻 Sobre o projeto

Provisionar monitoramento como código no Datadog por meio de um deploy de um Synthetics Test API usando Terraform.

## 💪 Funcionalidades

- [x] Integração com o Datadog mediante API e APP Keys
- [x] Cria Monitoria com Synthetics API
- [x] Validações no corpo da requisição, resposta http e tempo de resposta.
- [x] Gera alertas em caso de falha

---

### 🛠 Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com) e [Terraform - v1.2.9](https://www.terraform.io).

No Datadog, obtenha uma "API Key" e uma "APP Key" de um usuário com role de admin. Link da Documentação [Datadog - API and Application Keys](https://docs.datadoghq.com/account_management/api-app-keys/).

---

### 🎲 Instalação

```bash
# Clone este repositório
$ git clone https://github.com/alangiovanni/deploy-synthetics-terraform-datadog.git
# Acesse a pasta do projeto no terminal/cmd
$ cd deploy-synthetics-terraform-datadog
```

---

### ⚙️ Configuração
Procure o arquivo de variáveis, variables.tf, para alterar algumas variáveis para que o provisionamento funcione adequadamente em seu ambiente. Abaixo segue um trecho do código onde as alterações devem ser realizadas.

```
variable "datadog_api_key" {
  default     = "<API KEY>"
  description = "<Descrição da sua API KEY>"
}

variable "datadog_app_key" {
  default     = "<APP KEY>"
  description = "<Descrição da sua APP KEY>"
}
```

Atentar-se ao arquivo de versões, version.tf, lá está fixado as versões do provider e terraform que recomendo.
Novos monitoramentos podem ser criado se replicado o arquivo "monitor-api-hgweather.tf" e realizando os devidos ajustes.

---

### 🚀 Deploy

```bash
# Verifique a versão
$ terraform --version
# init
$ terraform init
# Plan
$ terraform plan
# Apply com auto-confirmação
$ terraform apply --auto-approve
```

---

## 🦸 Autor

Alan Giovanni

[![Linkedin Badge](https://img.shields.io/badge/-Alan_Giovanni-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/alan-giovanni-53aaa9ab/)](https://www.linkedin.com/in/alan-giovanni-53aaa9ab/) 
[![Gmail Badge](https://img.shields.io/badge/-agmtargino@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:agmtargino@gmail.com)](mailto:agmtargino@gmail.com)
