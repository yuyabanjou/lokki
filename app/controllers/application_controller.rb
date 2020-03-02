class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
	  if current_traveller
	  	flash[:notice] = "ログインに成功しました。"
	  	spots_path
	  else
	  	flash[:notice] = "新規登録完了しました。次にニックネームを入力してください。"
	  	edit_traveller_path
	  end
	end

	def after_sign_out_path_for(resource)
	  root_path
	end

end
