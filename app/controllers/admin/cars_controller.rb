class Admin::CarsController< AdminController
  before_action :load_categories, only: :new

	def index
	  @cars = Car.paginate(page: params[:page], per_page: 10)
    @user = User.all
    @caegories = Category.all
  end

	def new
    @car = Car.new
	end

  def create
    @car = Car.new car_params
    @car.save
    redirect_to admin_cars_path
  end

  def show
    @car = Car.friendly.find(params[:id])
  end

  private
  def car_params
    params.require(:car).permit :name, :body, :cost
  end

  def load_categories
    @categories = Category.all
  end
end
