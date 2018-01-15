class API::V1::User < Grape::API
  resources :users do
    des "Sign up"
    params do
      requires :email, type: String, allow_blank: false
      requires :password, type: String
      requires :first_name, type: String
      requires :last_name, type: String
    end
    post do
      email = params[:email]
      password = params[:password]
      first_name = params[:first_name]
      last_name = params[:last_name]
      user = User.find_by email: email
      return {status: 401, error_message: "Email is existed"} unless user
      user = User.create email: email, password: password, first_name: first_name, last_name: last_name
      {status: 200, token: JsonWebToken.encode({user_id: user.id, email: user.email})
    end
  end
end
