# Trabalho_SQL
Repsoitorio Dedicado ao Trabalho do Professor Anderson

# 💼 Sistema de Vendas para Loja (Cenário E)

Este projeto tem como objetivo simular o funcionamento de um sistema de vendas de uma loja utilizando um banco de dados relacional. Ele abrange desde a modelagem das tabelas até a manipulação e consulta de dados usando SQL.

Link para o Video: https://www.loom.com/share/4b1bd6b7c02940cfaa14d029f6799b21?sid=a411f940-d557-4adf-8ffc-ea1f6f2a5ba6
---

## 🧩 Cenário Escolhido

**Cenário E – Sistema de Vendas**

O sistema foi projetado para controlar as principais entidades de um processo de venda em uma loja, incluindo:

- **Produtos**: Itens disponíveis para venda.
- **Clientes**: Pessoas que realizam compras na loja.
- **Pedidos**: Registro das compras realizadas pelos clientes.
- **Itens de Pedido**: Detalhamento dos produtos comprados em cada pedido.
- **Formas de Pagamento**: Métodos de pagamento utilizados.
- **Estoque**: Quantidade de produtos disponíveis.

---

## 🎯 Objetivos do Projeto
- Criar a estrutura de um banco de dados relacional funcional.

- Inserir dados fictícios realistas nas tabelas.

- Realizar operações de atualização e exclusão com base em critérios reais.

- Criar consultas SQL complexas para análises gerenciais e operacionais.

## 🔍 Funcionalidades e Consultas Desenvolvidas
- Clientes que nunca fizeram pedidos.

- Atualização de preços de produtos com base em faixas de valor.

- Exclusão de duplicatas em cadastros.

- Relatórios de:

  - Total gasto por cliente e forma de pagamento.

  - Produtos com maior ou menor preço.

  - Estoque de produtos.

  - Pedidos realizados por cliente.

  - Formas de pagamento mais utilizadas.

---
## 📁 Estrutura do Repositório

```plaintext
/
├── ddl/
│   └── create_tables.sql        # Criação das tabelas com chaves e tipos
│
├── dml/
│   ├── insert_data.sql          # Inserção de 10 registros em cada tabela
│   └── update_delete.sql        # Atualizações e exclusões (clientes sem pedidos, duplicatas, etc.)
│
├── queries/
│   └── consultas.sql            # 10+ consultas SQL com joins, filtros, agregações
│
└── README.md                    # Descrição do projeto e instruções de uso
 
```

## 👨‍💻 Autor
### Nome: Daniel Vinicius Sobral Viana

### Curso: Engenharia de Software

### Professor: Anderson Costa

### Data: 09 de Maio de 2025


