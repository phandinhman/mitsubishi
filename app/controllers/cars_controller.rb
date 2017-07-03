class CarsController < ApplicationController
  before_action :load_car, only: :show

  def index
  end

  def new
  end

  def show
  end

  private 
  def load_car
    @car = Car.friendly.find params[:id]
  end
end
