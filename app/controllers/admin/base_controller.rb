class Admin::BaseController < ActionController::Base
  layout "admin"

  before_action :authenticate_user!
end
