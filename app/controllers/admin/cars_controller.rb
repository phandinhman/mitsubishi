class Admin::CarsController< Admin::BaseController
	def index
	  @cars = Car.all
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
