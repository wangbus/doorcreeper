class HomeController < ApplicationController
  before_action :doorkeeper_authorize!
  # before_filter :authenticate_user!
  respond_to :html, :json
  def index
    @user_id_from_cookie = session[:user_id]
  end

  def me
    respond_with current_resource_owner
  end

  private

  # Find the user that owns the access token
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
