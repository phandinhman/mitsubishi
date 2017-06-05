class API::V1 < Grape::API
  version "v1", using: :path

  rescue_from Grape::Exceptions::ValidationErrors do
    error!({status_code: Settings.http_code.code_400, content: Settings.validations_error},
      Settings.http_code.code_200)
  end

  desc "Return the current API version - V1."
  get do
    {version: "v1"}
  end

  helpers do
    def render_success status_code, message, data = {}
      {
        Settings.meta => {
          Settings.string_success => Settings.success,
          Settings.status_code => status_code,
          Settings.message => message
          }.merge(data)
      }
    end

    def render_record_not_found!
      binding.pry
      error!({status_code: Settings.not_found, content: Settings.not_found},
        Settings.http_code.code_200)
    end

    def authenticate!
      error!({status_code: Settings.status_codes.unauthorized, content: Settings.unauthorized},
        Settings.http_code.code_200) unless current_user
      error!({status_code: Settings.status_codes.blocked_user, content: I18n.t("api.error.authenticate.blocked_user")},
        Settings.http_code.code_200) unless current_user.active?
    end

    def current_user
      @current_user ||= User.current_user headers[Settings.requests.access_token]
    end


    # def claims
    #   auth_header = request.headers['Authorization'] and
    #   token = auth_header.split(' ').last and
    #   JsonWebToken.decode(token)
    # rescue
    #   nil
    # end

    # def invalid_authentication
    #   render json: {error: t('devise.failure.unauthenticated')}, status: :unauthorized
    # end
  end

  mount CarsAPI
  mount CategoriesAPI
  mount SessionsAPI
end
