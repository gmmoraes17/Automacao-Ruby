Dado("entro no site") do
    @t=EscolherProduto.new
    @t.load
end 

Quando("escolho o produto") do
    @t.produto.first.click
end

Entao("vou para o checkout") do
    @t.add_cart.first.click
    expect(@t.produto_adicionado.text).to eql 'Product successfully added to your shopping cart'
    @t.ir_p_checkout_1.click
end