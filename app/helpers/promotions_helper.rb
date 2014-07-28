module PromotionsHelper
  def price_to_currency(price)
    currency = price.to_s.split ''
    currency = '$' + currency.insert(currency.length - 2, '.').join
  end

  def discount promotion
    amt = (promotion['original_price'].to_f - promotion['price']) / promotion['original_price']

    (amt * 100).round(0).to_s + '%'
  end
end