class WebappcampServices
  def self.get_all
    JSON.parse RestClient.get ENV['PROMO_ENDPOINT']
  end

  def self.get_by_id id
    (JSON.parse RestClient.get "#{ENV['PROMO_ENDPOINT']}/#{id}")['data']
  end
end