class PromotionsController < ApplicationController
  def index
    @promotions = WebappcampServices::get_all_promotions
  end

  def show
    @promotion = WebappcampServices::get_by_promotion_id params['id']
  end
end