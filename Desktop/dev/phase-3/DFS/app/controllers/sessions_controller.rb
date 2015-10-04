class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to user
  	else
  		flash[:danger] = 'WRONG EMAIL OR PASSWORD COMBOOOO'
  		render 'signup'
  	end
  end

  def destroy
  end
end
