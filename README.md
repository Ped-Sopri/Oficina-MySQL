# 🛠️ Oficina-MySQL

Projeto de modelagem e implementação de banco de dados relacional para o gerenciamento de uma **oficina mecânica**, desenvolvido utilizando **MySQL**.

O objetivo deste projeto é aplicar conceitos fundamentais de **banco de dados relacional**, incluindo modelagem conceitual, lógica e implementação física utilizando SQL.

---

## 📌 Sobre o Projeto

Este projeto simula o banco de dados de uma **oficina mecânica**, permitindo armazenar e gerenciar informações importantes como:

- Clientes
- Veículos
- Mecânicos
- Peças
- Orçamentos
- Consertos

A estrutura foi projetada utilizando conceitos clássicos de modelagem de banco de dados como:

- Entidades
- Relacionamentos
- Chaves primárias
- Chaves estrangeiras
- Integridade referencial

Bancos de dados relacionais como o **MySQL** organizam os dados em tabelas inter-relacionadas, permitindo consultas eficientes e consistência dos dados.

---

# 🎯 Objetivo do Desafio

O desafio consiste em:

1. Criar um **modelo de banco de dados para uma oficina mecânica**
2. Definir as entidades principais do sistema
3. Implementar o banco de dados em **MySQL**
4. Criar relacionamentos entre tabelas
5. Garantir integridade referencial através de **FOREIGN KEYS**
6. Inserir dados de exemplo para simulação do sistema

Este tipo de projeto é comum em estudos de **modelagem de dados e SQL**, pois simula um sistema real utilizado por empresas para organizar informações e operações.

---

# 🧠 Modelagem do Sistema

O banco foi estruturado considerando o fluxo real de funcionamento de uma oficina.

### Principais entidades

- **Clientes**
- **Veículos**
- **Mecânicos**
- **Peças**
- **Orçlamentos**
- **Consertos**

### Relações principais

| Entidade | Relação |
|--------|--------|
Cliente | possui veículos |
Veículo | pode ter várias ordens de serviço |
Ordem de Serviço | registra serviços realizados |
Mecânico | executa serviços |
Serviços | podem usar peças |

---

# 🗂 Estrutura do Projeto

Oficina-MySQL
│
Descrição dos arquivos:

| Arquivo | Descrição |
|------|------|
schema.sql | Script para criação das tabelas |
inserts.sql | Inserção de dados de exemplo |
queries.sql | Exemplos de consultas SQL |
README.md | Documentação do projeto |

---


## 🧩 Conceitos Aplicados

Este projeto utiliza diversos conceitos importantes de banco de dados:

Modelagem conceitual

Modelagem lógica

Normalização

Chaves primárias

Chaves estrangeiras

Relacionamentos 1:N e N:N

Consultas SQL

Integridade referencial

## 🚀 Possíveis Melhorias

Algumas evoluções possíveis para o projeto:

Criar procedures

Implementar mais triggers

Criar views

Adicionar controle de estoque de peças

Criar dashboard com Power BI

Integrar com API backend

## 👨‍💻 Autor

Pedro Augusto de Jesus Soprijo

GitHub:
https://github.com/Ped-Sopri
