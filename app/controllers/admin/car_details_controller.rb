class Admin::CarDetailsController < Admin::BaseController
	def index
	end

	def new
		@car_detail = CarDetail.new
		binding.pry
	end
end
