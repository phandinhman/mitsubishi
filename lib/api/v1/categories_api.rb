class API::V1::CategoriesAPI < Grape::API
  resources :categories do
    get do
      render_success 400, Settings.render_success, data: Category.all
    end

    route_param :slug do
      get do
        render_success 400, Settings.render_success,
          data: Category.friendly.find(params[:slug]).cars
      end
    end
  end
end
