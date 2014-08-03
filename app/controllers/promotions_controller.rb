class PromotionsController < ApplicationController
  
  def index
    @promotions = JSON.parse RestClient.get ENV['PROMO_ENDPOINT']
  end

  def show
    @promotion = JSON.parse RestClient.get "#{ENV['PROMO_ENDPOINT']}/#{params[:id]}"

    @promotion = @promotion["data"]
  end
end