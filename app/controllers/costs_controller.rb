class CostsController < ApplicationController
  before_action :load_categories, :load_cars,  only: :index
  def index
    @car = Car.all
  end

  private
  def load_categories
    @categories = Category.all
  end

  def load_cars
    @car = Car.all
  end
end
