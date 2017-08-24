class AboutsController < ApplicationController
  before_action :load_categories, :load_about, only: :index

  def index
  end

  private 
  def load_categories
    @categories = Category.all
  end

  def load_about
    @about = About.first
  end
end
