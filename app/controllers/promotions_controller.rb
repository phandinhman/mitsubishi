class PromotionsController < ApplicationController
  def index
  end

  private
  def load_categories
    @categories = Category.all
  end
end
