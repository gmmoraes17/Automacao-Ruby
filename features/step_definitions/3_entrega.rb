# frozen_string_literal: true

Dado('seleciono a opcao de entrega') do
  @e = Entrega.new
end

Quando('concordo com os termos') do
  @e.agree_terms.click
end

Entao('checkout') do
  expect(@e.preco.first.text).to include '$2.00'
  @e.checkout_2.click
end
