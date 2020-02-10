#language: pt

@teste_2
Funcionalidade: Ir para checkout

Contexto: entrar no site
Dado entro no site
E escolho o produto
E vou para o checkout

@fazer_cadastro
Cenario: fazer cadastro
E prossigo para o checkout
Quando crio uma conta
Entao confirmo meu endereco

@escolher_entrega
Cenario: escolher entrega
Dado seleciono a opcao de entrega
Quando concordo com os termos
Entao checkout

@escolher_pagamento
Cenario: escolher pagamento
Quando seleciono opcao de pagamento
Entao confirmo minha compra