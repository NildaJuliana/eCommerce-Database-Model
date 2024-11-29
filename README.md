# Modelo Relacional de E-commerce - MySQL Workbench

Este repositório foi criado com o objetivo de concluir o primeiro desafio do **Bootcamp Suzano - Análise de Dados com Power BI**.  
Ele contém o modelo relacional de um sistema de e-commerce, desenvolvido utilizando o **MySQL Workbench**.  

O objetivo é estruturar e organizar as principais entidades e relações necessárias para o funcionamento de uma plataforma de vendas online.

---

## Componentes do Modelo Relacional  

O modelo relacional do sistema de e-commerce possui as seguintes entidades principais:

- **Cliente PF** e **Cliente PJ**  
  Gerenciam informações de clientes, tanto Pessoa Física quanto Pessoa Jurídica, como nome, CPF/CNPJ, endereço, e-mail e dados de pagamento associados.  

- **Vendedor Parceiro**  
  Representa vendedores parceiros cadastrados, incluindo informações como Razão Social, CNPJ e localização.  

- **Fornecedor**  
  Registra dados dos fornecedores, armazenando Razão Social e CNPJ.  

- **Produto**  
  Contém detalhes sobre os produtos disponíveis, como categoria, descrição e valor.  

- **Estoque do Produto**  
  Monitora a quantidade de produtos disponíveis para cada local de estoque.  

- **Pedido**  
  Centraliza informações de pedidos realizados, como descrição, frete e referências aos clientes (PF e PJ) e pagamentos.  

- **Pagamento**  
  Garante os registros das transações financeiras com diversas formas de pagamento, incluindo cartão, PIX e boleto.  

- **Status Entrega**  
  Realiza o rastreamento da entrega, com código de rastreio e site da transportadora.  

---

## Visualização do Modelo  

Abaixo está uma imagem do modelo relacional desenvolvido:  

![Modelo Relacional de E-commerce]([path-to-your-image.png](https://github.com/NildaJuliana/eCommerce-Database-Model/blob/main/Modelo%20E-commerce%20-%20Refinado.png)  

