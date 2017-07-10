class CategoriesController < ApplicationController
  load_and_authorize_resource find_by: :slug

  def show
  end

  private
  def load_car_by_category
    @cars = Category.friendly.find(params[:id]).cars
  end

  def load_categories
    @categories = Category.all
  end

  def load_category
    @category = Category.friendly.find params[:id]
  end
end
