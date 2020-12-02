# frozen_string_literal: true

# Login Page
class CriarConta < SitePrism::Page
  element :ir_p_checkout__, '.button.btn.btn-default.standard-checkout.button-medium'
  elements :campo_email, '.is_required.validate.account_input.form-control'
  element :click_criar, '#SubmitCreate'
  element :first_name, '#customer_firstname'
  element :last_name, '#customer_lastname'
  element :password, '#passwd'
  element :dia, '#uniform-days'
  element :select_dia, "#uniform-days option[value='#{rand(1..31)}']"
  element :mes, '#uniform-months'
  element :select_mes, "#uniform-months option[value='#{rand(1..12)}']"
  element :ano, '#uniform-years'
  element :select_ano, "#uniform-years option[value='#{rand(1900..Time.new.year - 19)}']"
  element :address, '#address1'
  element :city, '#city'
  element :state, '#uniform-id_state'
  element :select_state, "#uniform-id_state option[value='#{rand(1..8)}']"
  element :cep, '#postcode'
  element :telefone, '#phone_mobile'
  element :click_registrar, '#submitAccount'
  elements :confirm_endereco, '.address_address1.address_address2'
  elements :confirm_cidade, '.address_city.address_state_name.address_postcode'
  element :ir_p_checkout___, '.button.btn.btn-default.button-medium'
end
