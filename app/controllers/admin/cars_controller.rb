class Admin::CarsController< AdminController
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
  end

  def show
    @car = Car.friendly.find(params[:id])
  end

  private
  def car_params
    params.require(:car).permit :name, :body, :cost
  end
end
