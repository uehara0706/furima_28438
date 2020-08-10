class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :move_to_index, except: [:index, :show]
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"] 
    end
  end
end

def move_to_index
  unless user_signed_in?
    redirect_to action: :index
  end