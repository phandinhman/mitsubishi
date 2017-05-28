class API::V1::CategoriesAPI < Grape::API
  resources :categories do
    get do
      render_success 400, Settings.render_success, data: Category.all
    end
  end
end