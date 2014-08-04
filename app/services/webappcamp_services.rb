class WebappcampServices
  PROMOS = ENV['PROMO_ENDPOINT']
  
  def self.get_all_promotions
    JSON.parse RestClient.get PROMOS
  end

  def self.get_by_promotion_id id
    (JSON.parse RestClient.get "#{PROMOS}/#{id}")['data']
  end
end