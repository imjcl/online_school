class WebappcampServices
  PROMOS = ENV['PROMO_ENDPOINT']
  
  def self.get_all
    JSON.parse RestClient.get PROMOS
  end

  def self.get_by_id id
    (JSON.parse RestClient.get "#{PROMOS}/#{id}")['data']
  end
end