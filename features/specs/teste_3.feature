#language: pt

@teste_3
Funcionalidade: Selecionar Entrega

Contexto: entrar no site, escolher produto, checkout e cadastro
Dado entro no site
E escolho o produto
E vou para o checkout
E prossigo para o checkout
E crio uma conta
E confirmo meu endereco

@escolher_entrega
Cenario: escolher entrega
Dado seleciono a opcao de entrega
Quando concordo com os termos
Entao checkout