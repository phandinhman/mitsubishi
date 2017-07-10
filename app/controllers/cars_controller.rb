class CarsController < ApplicationController
  load_and_authorize_resource find_by: :slug

  def index
  end

  def new
  end

  def show
  end
end
