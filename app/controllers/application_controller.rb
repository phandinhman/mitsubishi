class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html do
        add_message_flash :error, t(:not_authorized)
        redirect_to main_app.root_url
      end
    end
  end

  def add_message_flash type, message
    flash[type] ||= []
    flash[type].push *message
  end

  def add_message_flash_now type, message
    flash.now[type] ||= []
    flash.now[type].push *message
  end
end
