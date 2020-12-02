# frozen_string_literal: true

Dado('prossigo para o checkout') do
  @n = CriarConta.new
  @n.ir_p_checkout__.click
end

Quando('crio uma conta') do
  @n.campo_email.first.set "gabriel_m#{rand(1..999_999)}@hotmail.com"
  @n.click_criar.click
  @n.first_name.set DATA['first_name']
  @n.last_name.set DATA['last_name']
  @n.password.set rand(11_111_111..99_999_999)
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
  @n.cep.set rand(11_111..99_999)
  @n.telefone.set rand(11_111_111..99_999_999)
  @n.click_registrar.click
end

Entao('confirmo meu endereco') do
  expect(@n.confirm_endereco.first.text).to eql 'Av Taruma'
  expect(@n.confirm_cidade.first.text).to include 'São Paulo'
  @n.ir_p_checkout___.click
end
