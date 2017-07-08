class IndexController < ApplicationController
  before_action :load_categories, :load_cars, only: :index

  def index
  end

  private
  def load_categories
    @categories = Category.all
  end

  def load_cars
    @cars = Car.highlight
  end
end
