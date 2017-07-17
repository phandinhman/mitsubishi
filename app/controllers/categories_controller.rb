class CategoriesController < ApplicationController
  before_action :load_cars_by_category, :load_categories, :load_category, only: [:index, :show]

  def index
  end

  def show
  end

  private
  def load_cars_by_category
    @cars = Category.friendly.find(params[:id]).cars
  end

  def load_categories
    @categories = Category.all
  end

  def load_category
    @category = Category.friendly.find params[:id]
  end
end
