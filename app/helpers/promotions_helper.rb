module PromotionsHelper
  def price_to_currency(price)
    '$' + (price / 100).to_s + '.00'
  end
end