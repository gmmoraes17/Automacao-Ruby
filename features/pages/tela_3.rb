# frozen_string_literal: true

# Login Page
class Entrega < SitePrism::Page
  element :agree_terms, '#uniform-cgv'
  element :checkout_2, '.button.btn.btn-default.standard-checkout.button-medium'
  elements :preco, '.delivery_option_price'
end
