class PromotionsController < ApplicationController
  include PromotionsHelper
  def index
    @promotions = JSON.parse RestClient.get 'http://www.webappcamp.ws/api/v0/promotions'
  end

  def show
    @promotion = JSON.parse RestClient.get "http://www.webappcamp.ws/api/v0/promotions/#{params[:id]}"

    @promotion = @promotion["data"]
  end
end