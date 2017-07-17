class ContactsController < ApplicationController
  before_action :load_categories, only: :index
  def index
  end

  private
  def load_categories
    @categories = Category.all
  end
end
