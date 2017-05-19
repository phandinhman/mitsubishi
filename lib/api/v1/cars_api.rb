class API::V1::CarsAPI < Grape::API
  resources :cars do
    get do
      render_success 400, Settings.render_success,
        data: Car.all
    end
  end
end
