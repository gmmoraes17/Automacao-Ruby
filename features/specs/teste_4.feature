#language: pt

@teste_4
Funcionalidade: Pagamento

Contexto: entrar no site, escolher produto, checkout e cadastro
Dado entro no site
E escolho o produto
E vou para o checkout
E prossigo para o checkout
E crio uma conta
E confirmo meu endereco
E seleciono a opcao de entrega
E concordo com os termos
E checkout

@escolher_pagamento
Cenario: escolher pagamento
Quando seleciono opcao de pagamento
Entao confirmo minha compra