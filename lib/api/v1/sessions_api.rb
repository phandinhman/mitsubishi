class API::V1::SessionsAPI < Grape::API
  helpers do
    def check_params_present

    end

    def invalid_login_attempt
      render json: {error: t('devise.failure.not_found_in_database')}, status: :unauthorized
    end
  end

  resources :sessions do
    before do
    end

    params do
      requires :email, type: String
      requires :password, type: String
    end
    post do
      email = params[:email]
      password = params[:password]
      if email.nil? || password.nil?
        error!({error_code: 404, error_message: "Invalid email or password"}, 401)
        return
      end

      user = User.find_by email: email.downcase
      if user && user.valid_password?(password)
        auth_token = JsonWebToken.encode({user_id: user.id, email: user.email})
        render_success 400, Settings.render_success,
          data: {status: "ok", token: auth_token}
      else
        render_success 400, Settings.render_success,
          data: {status: "ok", token: auth_token}
      end
    end
  end
end
