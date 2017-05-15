class CategoriesController < ApplicationController
  before_action :load_car_by_category, :load_category, only: [:show]

  def show
  end

  private
  def load_car_by_category
    @cars = Category.friendly.find(params[:id]).cars
  end

  def load_category
    @category = Category.friendly.find params[:id]
  end
end
