module DeviseHelper
  def devise_error_messages
    resource.errors.empty? ? flash[:alert] : resource.errors.full_messages
  end
end
