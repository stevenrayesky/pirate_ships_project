class UsersController < ApplicationController
	def index
		# set variable to all users so the index can display all users
		@users = User.all
		@users_sorted_by_worth = @users.sort_by(&:total_worth).reverse
	end

	def new
		# set variable to create a new user 
		@user = User.new
	end

	def create
		# set variable to create a new user and pass through strong params
		@user = User.new(user_params)
		# save the newly created user
		@user.save
  		session[:user_id] = @user.id
 		# redirect to the newly create user's profile page /show
  		redirect_to @user
	end

	def edit
	end

	def updated
	end

	def show
		@user = User.find(params[:id])
    	@current_user = User.find(session[:user_id])
	end

	def destroy
	end

	#put strong params beneath private to allow certain params to be allowed when creating a new user
	private

	def user_params
		params.require(:user).permit(:lname, :password, :adjective, :bio)
	end
end
