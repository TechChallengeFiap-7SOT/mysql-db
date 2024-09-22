# Terraform AWS MySQL Database

Este repositório contém a infraestrutura como código (IaC) usando **Terraform** para provisionar um banco de dados **MySQL** na AWS.

## Visão Geral

O Terraform definido neste projeto irá:

- Criar uma VPC personalizada.
- Criar 2 subnets privadas para o banco de dados.
- Criar um grupo de segurança para controlar o tráfego para o banco MySQL.
- Provisionar uma instância RDS MySQL na AWS com os parâmetros fornecidos.

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes requisitos instalados:

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- [Credenciais da AWS:](https://aws.amazon.com/pt/blogs/aws-brasil/onde-esta-minha-secret-access-key/) Tenha suas credenciais criadas

## Estrutura do Projeto

```bash
.
├── main.tf               # Definição dos recursos principais (RDS, VPC, Subnets, Security Group)
├── variables.tf          # Definição das variáveis do projeto
├── outputs.tf            # Outputs para exibir informações após a execução
├── terraform.tfvars      # Valores das variáveis -> copiar exemplo para utlizar (não deve ser commitado)
├── .gitignore            # Arquivos ignorados pelo Git
└── README.md             # Este arquivo
