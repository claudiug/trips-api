class ApplicationController < ActionController::API
  before_action :secure_access

  private

  def secure_access
    api_key = ApiKey.find_by_auth_token(params[:auth_token])
    head :unauthorized unless api_key
  end
end
