class Admin::HomeController < AdminController
  def index
    @cars = Car.all
    @user = User.all
    @categories = Category.all
  end
end
