module PromotionsHelper
  def price_to_currency(price)
    currency = price.to_s.split ''
    currency = '$' + currency.insert(currency.length - 2, '.').join
  end
end