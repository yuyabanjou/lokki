class ApplicationController < ActionController::Base

	before_action :authenticate_traveller!

	def after_sign_in_path_for(resource)
	  flash[:notice] = "ログインしました。"
	  spots_path
	end

	def after_sign_out_path_for(resource)
	  root_path
	end

end
