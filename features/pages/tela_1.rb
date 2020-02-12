# frozen_string_literal: true

# Login Page
class EscolherProduto < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  elements :produto, '.replace-2x.img-responsive'
  elements :add_cart, '.buttons_bottom_block.no-print'
  element :ir_p_checkout_1, '.btn.btn-default.button.button-medium'
  element :produto_adicionado, '.layer_cart_product.col-xs-12.col-md-6 h2'
end
