class PromotionsController < ApplicationController
  def index
    @promotions = JSON.parse RestClient.get 'http://www.webappcamp.ws/api/v0/promotions'
  end
end