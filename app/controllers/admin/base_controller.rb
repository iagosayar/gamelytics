class Admin::BaseController < ApplicationController
	layout 'admin'
	before_filter :authenticate_user!
	before_filter :deny_access_to_unauthorized_users

	def deny_access_to_unauthorized_users
  	redirect_to root_path, alert: "Acceso no autorizado" if !current_user.admin?
  end
end