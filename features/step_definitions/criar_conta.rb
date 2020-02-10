Dado("prossigo para o checkout") do
    @n=CriarConta.new
    @n.ir_p_checkout_2.click
end
  
Quando("crio uma conta") do
    @n.campo_email.first.set "gabriel_m#{rand(0001..9999)}@hotmail.com"
    @n.click_criar.click
    @n.first_name.set DATA['first_name']
    @n.last_name.set DATA['last_name']
    @n.password.set "#{rand(11111111..99999999)}"
    @n.dia.click
    @n.select_dia.click
    @n.mes.click
    @n.select_mes.click
    @n.ano.click
    @n.select_ano.click
    @n.address.set DATA['address']
    @n.city.set DATA['cidade']
    @n.state.click
    @n.select_state.click
    @n.cep.set rand(11111..99999)
    @n.telefone.set rand(11111111..99999999)
    @n.click_registrar.click
end
  
Entao("confirmo meu endereco") do
    binding.pry
    expect(@n.confirm_endereco.first.text).to eql 'Av Taruma'
    expect(@n.confirm_cidade.first.text).to include 'São Paulo'
end
  
Dado("seleciono a opcao de entrega") do

end
  
Quando("concordo com os termos") do

end
  
Entao("checkout") do

end
  
Quando("seleciono opcao de pagamento") do

end
  
Entao("confirmo minha compra") do

end