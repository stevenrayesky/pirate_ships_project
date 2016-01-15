class SessionsController < ApplicationController
	def new
	end

	def create
		puts "TEST: LOGGING IN *****************"
		@user = User.where(lname: params[:lname]).first     
		 if @user and @user.password == params[:password_digest]
		 session[:user_id] = @user.id
		 redirect_to @user
		 flash[:notice] = "logged in"
		else
		flash[:notice] = "please try again!"
		redirect_to login_path
		end
	end

	def destroy
		if @current_user
		session[:user_id] = nil
		flash[:notice] = "logged out"
		redirect_to root_path
		end
	end
end
