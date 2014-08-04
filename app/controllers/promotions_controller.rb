class PromotionsController < ApplicationController
  def index
    @promotions = WebappcampServices::get_all
  end

  def show
    @promotion = WebappcampServices::get_by_id params['id']
  end
end