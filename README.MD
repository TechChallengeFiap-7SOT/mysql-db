# Terraform AWS MySQL Database

Este repositório contém a infraestrutura como código (IaC) usando **Terraform** para provisionar um banco de dados **MySQL** na AWS.

## Visão Geral

O Terraform definido neste projeto irá:
- Criar um grupo de segurança para controlar o tráfego para o banco MySQL.
- Provisionar uma instância RDS MySQL na AWS com os parâmetros fornecidos.
- Inicia o banco de dados com tabelas necessárias para rodar o projeto do Tech Challenge

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes requisitos instalados:
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- [Credenciais da AWS:](https://aws.amazon.com/pt/blogs/aws-brasil/onde-esta-minha-secret-access-key/) Tenha suas credenciais criadas
