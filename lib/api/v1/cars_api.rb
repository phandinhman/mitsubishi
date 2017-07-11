class API::V1::CarsAPI < Grape::API
  resources :cars do
    get do
      render_success 400, Settings.render_success, data: Car.highlight
    end

     params do
      optional :name, type: String, desc: "Name"
      optional :cost, type: Integer, desc: "Cost"
      optional :version, type: Integer, desc: "Version"
      optional :width, type: Integer, desc: "Width"
      optional :height, type: Integer, desc: "Height"
      optional :length, type: Integer, desc: "Length"
      requires :category_id, type: Integer, desc: "Category ID"
    end
    post do
      car = Car.new params
      car.save
      render_success Settings.status_codes.feedback_success, Settings.feedback_success
    end
  end
end
