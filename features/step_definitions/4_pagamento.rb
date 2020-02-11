Quando("seleciono opcao de pagamento") do
    @p=Pagamento.new
    @p.forma.click
    expect(@p.confirm_pag.text).to eql 'CHECK PAYMENT'
end
  
Entao("confirmo minha compra") do
    @p.confirmar_compra.click
    expect(@p.confirmacao.text).to eql 'Your order on My Store is complete.'
end