class PlayersController < ApplicationController
	
	def index
		@user = User.find(session[:user_id])
		@players = Player.all
	end

	def show
		@user = User.find(session[:user_id])
		@player = Player.find(2)# session[:user_id])
		# render user_path(@user)
	end

	def new
	end

	def create
	    @user = User.find(session[:user_id])
	    @player = @user.players.create(player_params)
	    redirect_to user_path(@user)
	end

	def edit
	end

	def destroy
	end

	private

	def player_params
		params.require(:player).permit(:first_name, :last_name, :sport)
	end


end
