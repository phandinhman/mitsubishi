class IndexController < ApplicationController
  before_action :load_categories, only: :index

  def index
    @cars = Car.all
  end

  private
  def load_categories
    @categories = Category.all
  end
end
