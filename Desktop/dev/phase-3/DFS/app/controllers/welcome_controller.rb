class WelcomeController < ApplicationController
    
  def current_user
	current_user = User.find_by_id(session[:user_id])
  end

  def index
  	if current_user
  		render 'users/profile'
  	else
  		render 'sessions/new'
  	end
  end
end
