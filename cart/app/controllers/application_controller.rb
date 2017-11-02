class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def authenticate
    authenticate_or_request_with_http_basic do |username,password|
    Admin.where(username:username,password:password).first.present?
    end
    end
end
